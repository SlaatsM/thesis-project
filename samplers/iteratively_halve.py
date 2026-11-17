import random
import time
from typing import Any

from z3 import Int, Solver, sat, unsat

from util import membership, parse_simple_file


class IterativelyHalve:
    """
    Iteratively_halve CRS sampler.

    Uses partition refinement: the assignment space is repeatedly split into smaller
    parts; parts that provably contain no solution are discarded; candidates are drawn uniformly from the kept parts
    and checked by rejection sampling.
    """

    name = "iteratively_halve"
    format = "simple"

    MAX_RANDOM_TRIES = 10
    TIME_LIMIT = 60  # Practical timeout in seconds

    def sample(self, problem_file: str, number: int) -> list[dict[str, Any]]:
        start_time = time.perf_counter()

        variables, domains, constraint = parse_simple_file(problem_file)

        # Parse the constraint once, all later queries use push()/pop() on this solver.
        solver = self._build_solver(variables, constraint)
        z3vars = {var: Int(var) for var in variables}

        def initial_parts():
            # (part, known_sat): known_sat is True only if Z3 answered 'sat' for this part.
            return [({var: domains[var] for var in variables}, False)]

        parts = initial_parts()
        samples = []

        while len(samples) < number:
            if time.perf_counter() - start_time >= self.TIME_LIMIT:
                break

            solution = self._maybe_find_solution(parts, variables, solver, z3vars)

            if solution is not None:
                samples.append(solution)
                # For the next sample, we start fresh with the full space
                parts = initial_parts()
                continue

            parts = self._refine(parts, solver, z3vars)

            if not parts:
                break

        return samples

    def _build_solver(self, variables: list[str], constraint: str) -> Solver:
        var_decls = "\n".join(f"(declare-fun {var} () Int)" for var in variables)
        solver = Solver()
        solver.from_string(f"{var_decls}\n{constraint}")
        return solver

    def _maybe_find_solution(self, parts, variables, solver, z3vars):
        for _ in range(self.MAX_RANDOM_TRIES):
            part, _known = random.choice(parts)

            assignment = {var: random.choice(part[var]) for var in variables}

            if self._check_solution(assignment, solver, z3vars):
                return assignment

        return None

    def _check_solution(self, assignment, solver, z3vars) -> bool:
        solver.push()
        for var, value in assignment.items():
            solver.add(z3vars[var] == value)
        result = solver.check()
        solver.pop()
        return result == sat

    def _partition(self, part: dict[str, list[int]]) -> list[dict[str, list[int]]]:
        partitionable_vars = [var for var, domain in part.items() if len(domain) > 1]
        if not partitionable_vars:
            return [part]  # all domains have size 1, cannot be split

        var = random.choice(partitionable_vars)
        domain = part[var]
        mid = len(domain) // 2

        part1 = part.copy()
        part1[var] = domain[:mid]
        part2 = part.copy()
        part2[var] = domain[mid:]
        return [part1, part2]

    # Split every part in two and keep the children that may contain a solution.
    def _refine(self, parts, solver, z3vars):
        new_parts = []
        for part, known_sat in parts:
            children = self._partition(part)

            if len(children) == 1:
                # Unsplittable (a single assignment). If it was already proven
                # satisfiable there is nothing to re-check.
                if known_sat:
                    new_parts.append((part, True))
                else:
                    result = self._check_part(part, solver, z3vars)
                    if result != unsat:
                        new_parts.append((part, result == sat))
                continue

            first, second = children
            r1 = self._check_part(first, solver, z3vars)
            if r1 != unsat:
                new_parts.append((first, r1 == sat))

            if r1 == unsat and known_sat:
                # parent contains a solution, first child does not => second child does
                new_parts.append((second, True))
            else:
                r2 = self._check_part(second, solver, z3vars)
                if r2 != unsat:
                    new_parts.append((second, r2 == sat))
        return new_parts

    def _check_part(self, part, solver, z3vars):
        solver.push()
        for var, domain in part.items():
            solver.add(membership(z3vars[var], domain))
        result = solver.check()
        solver.pop()
        return result
