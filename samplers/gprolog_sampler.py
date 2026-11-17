import os
import subprocess
import tempfile
import time
from pathlib import Path


class GPrologSampler:
    """
    GNU Prolog based sampler with randomized solution selection.

    Each benchmark must define a predicate:

        solve(Model)

    where Model is a list of variable assignments e.g. [x-X, y-Y, z-Z].
    The solver should use fd_labeling/2 with value_method(random) for
    randomized value selection.

    The sampler generates a unique random seed for each sample (based on
    system time) and passes it to Prolog via set_seed/1 before each call
    to solve/1, ensuring each solution is independently randomized.
    """

    name = "gprolog"
    format = "prolog"

    def sample(self, prolog_file, number):

        driver_file = self.create_driver(prolog_file, number)

        try:
            result = subprocess.run(
                [
                    "gprolog",
                    "--quiet",
                    "--consult-file",
                    driver_file,
                    "--query-goal",
                    "main",
                ],
                check=False,
                capture_output=True,
                text=True,
            )

            if result.returncode != 0:
                raise RuntimeError(result.stderr)

            return self.parse_output(result.stdout)

        finally:
            os.remove(driver_file)

    def create_driver(self, prolog_file, number):

        driver = tempfile.NamedTemporaryFile(mode="w", suffix=".pl", delete=False)
        absolute_path = Path(prolog_file).absolute()

        driver.write(
            f"""

            main :-
                consult('{absolute_path}'),

                generate({self.generate_seeds_like_randomize(number)}),

                halt.

            generate([]).
            generate([Seed|Seeds]) :-
                set_seed(Seed),

                once(solve(Model)),

                write(Model),
                nl,

                generate(Seeds).
            """
        )

        driver.close()
        return driver.name

    # Generates a list of N random seeds based on the current time.
    def generate_seeds_like_randomize(self, N):

        seeds = []

        prime_multiplier = 1000003

        base_seed = int(time.time() * 1_000_000)

        for i in range(N):
            seed = (base_seed + i * prime_multiplier) % (2**31 - 1)
            seeds.append(seed)

        seeds_list = "[" + ", ".join(str(s) for s in seeds) + "]"
        return seeds_list

    def parse_output(self, output):

        models = []

        for line in output.splitlines():
            line = line.strip()

            # Ignore GNU Prolog startup text and other output.
            if not line.startswith("["):
                continue

            model = {}

            content = line[1:-1]

            assignments = content.split(",")

            for assignment in assignments:
                name, value = assignment.split("-")

                model[name.strip()] = int(value.strip())

            models.append(model)

        return models
