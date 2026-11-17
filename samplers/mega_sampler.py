import os
import random
import subprocess
from pathlib import Path


class MeGASampler:
    """
    SMT sampler using the external MeGASampler implementation.

    The sampler:
        1. Runs the MeGASampler executable on an SMT2 benchmark
        2. Lets MeGASampler generate satisfying models
        3. Reads the generated .samples file
        4. Converts the samples into JSON-friendly dictionaries
    """

    name = "megasampler"
    format = "smt"

    def __init__(self, executable):
        self.executable = executable
        self.seed_shim = self._build_seed_shim()

    def _build_seed_shim(self):
        """
        Compile the LD_PRELOAD shim that seeds libc's rand() before MeGASampler's main() runs.

        MeGASampler never calls srand() itself, so rand() silently behaves as if seeded with 1 on every run,
        making samples deterministic. This preload fixes that without touching MeGASampler's own source.
        """

        script_dir = Path(__file__).parent.parent
        shim_dir = script_dir / "seed_shim"
        src_path = shim_dir / "seed_preload.c"
        so_path = shim_dir / "seed_preload.so"

        # Compile if .so doesn't exist or source is newer
        if not so_path.exists() or src_path.stat().st_mtime > so_path.stat().st_mtime:
            subprocess.run(
                ["gcc", "-shared", "-fPIC", "-O2", "-o", str(so_path), str(src_path)],
                check=True,
            )

        return so_path.absolute()

    def sample(self, smt_file, number):
        # smt_file is in: benchmarks/{category}/{subset}/smt/{filename}.smt2
        # Results should go to: results/{category}/{subset}/megasampler/
        smt_path = Path(smt_file)
        subset_path = smt_path.parent.parent
        subset_name = subset_path.name
        main_category = subset_path.parent.name

        results_dir = Path("results") / main_category / subset_name / self.name
        results_dir.mkdir(parents=True, exist_ok=True)

        env = os.environ.copy()

        # MeGASampler requires the patched Z3 shared library.
        # This environment change only affects the MeGASampler process.
        env["LD_LIBRARY_PATH"] = (
            str(Path("external/z3/build").absolute())
            + ":"
            + env.get("LD_LIBRARY_PATH", "")
        )

        # Seed libc's rand() for this subprocess only
        env["LD_PRELOAD"] = str(self.seed_shim) + (
            ":" + env["LD_PRELOAD"] if "LD_PRELOAD" in env else ""
        )

        # Run external MeGASampler executable
        result = subprocess.run(
            [
                self.executable,
                "-a",
                "MeGAb",
                "-n",
                str(number),
                "-o",
                str(results_dir),
                smt_file,
            ],
            check=False, 
            capture_output=True,
            text=True,
            env=env,
        )

        if result.returncode != 0:
            raise RuntimeError(result.stderr)

        # MeGASampler stores models in:
        # <results_dir>/<benchmark>.samples
        sample_file = results_dir / (smt_path.name + ".samples")

        if not sample_file.exists():
            raise RuntimeError(f"Expected output file not found: {sample_file}")

        # Convert MeGASampler output into the common model format
        models = self.parse_samples(sample_file)

        # Remove intermediate file after parsing
        sample_file.unlink()

        # If we need more samples than solutions found, we sample uniformly from the found models
        if len(models) < number:
            sampled_models = random.choices(models, k=(number - len(models)))
            models.extend(sampled_models)

        return models

    def parse_samples(self, filename):
        """
        Parse MeGASampler .samples output.

        Example input:
            1: x:1;y:2;z:3;

        Example output:
            {
                "x": 1,
                "y": 2,
                "z": 3
            }

        Returns:
            List of model dictionaries.
        """

        models = []

        with open(filename) as f:
            for line in f:
                line = line.strip()

                if not line:
                    continue

                # Remove sample index:
                # "1: x:14;y:32;z:99;"
                _, values = line.split(":", 1)

                model = {}

                for assignment in values.split(";"):
                    if not assignment:
                        continue

                    variable, value = assignment.split(":", 1)
                    variable = variable.strip()
                    value = value.strip()

                    model[variable] = int(value)

                models.append(model)

        return models
