import random

from z3 import Solver, sat

from util import block_model, extract_model


class BlockingSampler:
    """
    Baseline SMT sampler using model blocking.

    Repeatedly:
        1. Ask Z3 for a model
        2. Save it
        3. Add a blocking clause
        4. Repeat
    """

    name = "blocking"
    format = "smt"

    def sample(self, smt_file, number):

        solver = Solver()

        # Load SMT2 benchmark
        with open(smt_file, "r") as f:
            smt_content = f.read()

        solver.from_string(smt_content)

        models = []

        while len(models) < number:
            result = solver.check()

            if result != sat:
                break

            model = solver.model()

            model_dict = extract_model(model)

            models.append(model_dict)

            # Add blocking clause
            solver.add(block_model(model))

        # If we need more samples than solutions found, we sample uniformly from the found models
        if len(models) < number:
            sampled_models = random.choices(models, k=(number - len(models)))
            models.extend(sampled_models)

        return models
