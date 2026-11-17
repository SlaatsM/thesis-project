import os
import sys

from samplers.blocking_sampler import BlockingSampler
from samplers.gprolog_sampler import GPrologSampler


def get_sampler_and_format(sampler_name):
    if sampler_name == "blocking":
        return BlockingSampler(), "smt", ".smt2"
    elif sampler_name == "gprolog":
        return GPrologSampler(), "prolog", ".pl"
    else:
        raise ValueError(
            f"Unknown sampler '{sampler_name}'. Use 'blocking' or 'gprolog'"
        )


if __name__ == "__main__":
    num_samples = 100

    if len(sys.argv) < 3:
        print("Usage: python validate.py <sampler> <benchmark_number> [num_samples]")
        sys.exit(1)

    sampler_name = sys.argv[1].lower()
    if sampler_name not in ["blocking", "gprolog"]:
        print(f"Error: '{sampler_name}' is not valid. Use 'blocking' or 'gprolog'")
        sys.exit(1)

    try:
        benchmark_number = int(sys.argv[2])
    except ValueError:
        print(f"Error: '{sys.argv[2]}' is not a valid number")
        sys.exit(1)

    # Optional
    if len(sys.argv) > 3:
        try:
            num_samples = int(sys.argv[3])
        except ValueError:
            print(f"Error: '{sys.argv[3]}' is not a valid number")
            sys.exit(1)

    try:
        sampler, format_name, extension = get_sampler_and_format(sampler_name)
    except ValueError as e:
        print(f"Error: {e}")
        sys.exit(1)

    filename = f"constraint_{benchmark_number:04d}{extension}"
    file_path = os.path.join("benchmarks", format_name, filename)

    print(f"Running on: {file_path}")
    print(f"Sampler: {sampler_name}")
    print(f"Requesting {num_samples} samples")

    models = sampler.sample(file_path, num_samples)
    print(f"Generated {len(models)} models")
