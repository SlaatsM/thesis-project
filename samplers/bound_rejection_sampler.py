import random
import time

from z3 import Int, Optimize, Solver, sat

from util import membership, parse_simple_file, z3_value


class BoundRejectionSampler:
    """
    SMT sampler using bounded rejection sampling.

    Algorithm:
        1. Add the domain of every variable to the constraint and find the
           lower and upper bound of every variable (minimize / maximize).
        2. The candidate values of a variable are the values of its domain
           that lie within these bounds.
        3. Repeatedly:
            a. Pick the variables in random order.
            b. For each variable, draw a random candidate value (at most
               MAX_RANDOM_TRIES attempts) and keep it if the solver says the
               partial assignment is still satisfiable.
            c. If every variable has been assigned, store the valuation;
               otherwise discard the attempt and start a new one.
        4. Stop when enough valuations are found or the time limit is reached.
    """

    name = "bound_rejection"
    format = "simple"

    MAX_RANDOM_TRIES = 10
    TIME_LIMIT = 60  # Practical timeout in seconds

    def sample(self, problem_file, number):
        start_time = time.perf_counter()

        variables, domains, constraint = parse_simple_file(problem_file)
        smt_text = self.build_smt(variables, constraint)
        z3vars = {n: Int(n) for n in variables}
        domain_constraints = [membership(z3vars[n], domains[n]) for n in variables]

        bounds = self.compute_bounds(smt_text, variables, z3vars, domain_constraints)
        if bounds is None:
            return []

        # Values of the declared domain that lie between the computed bounds
        candidates = {
            n: [v for v in domains[n] if bounds[n][0] <= v <= bounds[n][1]]
            for n in variables
        }

        solver = Solver()
        solver.from_string(smt_text)
        for c in domain_constraints:
            solver.add(c)

        models = []
        while len(models) < number:
            if time.perf_counter() - start_time >= self.TIME_LIMIT:
                break

            success = True
            valuation = {}
            solver.push()

            order = list(variables)
            random.shuffle(order)

            for name in order:
                var = z3vars[name]
                assigned = False

                for _ in range(self.MAX_RANDOM_TRIES):
                    value = random.choice(candidates[name])
                    if solver.check(var == value) == sat:
                        solver.add(var == value)
                        valuation[name] = value
                        assigned = True
                        break

                if not assigned:
                    success = False
                    break

            solver.pop()

            if success:
                models.append(valuation)

        return models

    @staticmethod
    def build_smt(variables, constraint):
        decls = "\n".join(f"(declare-fun {v} () Int)" for v in variables)
        return f"{decls}\n{constraint}"

    # Minimum and maximum value of every variable under the constraint and the variable domains.
    def compute_bounds(self, smt_text, variables, z3vars, domain_constraints):
        opt = Optimize()
        opt.from_string(smt_text)
        for c in domain_constraints:
            opt.add(c)

        bounds = {}
        for n in variables:
            vals = []
            for minimize in (True, False):
                opt.push()
                (opt.minimize if minimize else opt.maximize)(z3vars[n])
                if opt.check() != sat:
                    opt.pop()
                    return None
                vals.append(
                    z3_value(opt.model().eval(z3vars[n], model_completion=True))
                )
                opt.pop()
            bounds[n] = tuple(vals)
        return bounds
