import argparse
import json
import os
import random
import time
from pathlib import Path

from samplers.blocking_sampler import BlockingSampler
from samplers.bound_rejection_sampler import BoundRejectionSampler
from samplers.csb_sampler import CSBSampler
from samplers.gprolog_sampler import GPrologSampler
from samplers.iteratively_halve import IterativelyHalve
from samplers.mega_sampler import MeGASampler

NUM_SAMPLES = 50
NUM_RUNS = 20


# Get benchmark files of a specific format from a subset path
def get_benchmarks(subset_path, file_format):
    subset_path = Path(subset_path)
    if not subset_path.exists():
        return []

    format_map = {
        "smt": "*.smt2",
        "prolog": "*.pl",
        "simple": "*.txt",
        "csb": "*.smt2",
    }

    if file_format not in format_map:
        raise ValueError(f"Unknown benchmark format: {file_format}")

    extension = format_map[file_format]

    format_dir = subset_path / file_format
    if format_dir.exists():
        return list(format_dir.glob(extension))
    else:
        return []


# Get all available subset paths
def get_available_subsets(base_path="benchmarks"):
    base_path = Path(base_path)
    subsets = []

    # Get mix and pos directories
    for main_dir in base_path.iterdir():
        if main_dir.is_dir() and main_dir.name in ["mix", "pos"]:
            # Get single, small, big subdirectories
            for sub_dir in main_dir.iterdir():
                if sub_dir.is_dir() and sub_dir.name in ["single", "small", "big"]:
                    subsets.append(str(sub_dir))

    return subsets


# Get appropriate samplers for a given subset
def get_samplers_for_subset(subset_path):
    samplers = [
        BlockingSampler(),
        BoundRejectionSampler(),
        IterativelyHalve(),
        CSBSampler(executable="./external/csb/csb"),
        MeGASampler(executable="./external/MeGASampler/megasampler"),
    ]

    # GProlog only works on 'pos' subsets
    if "pos" in subset_path:
        samplers.append(GPrologSampler())

    return samplers


# Save results with run_id to avoid overwrites
def save_results(sampler_name, benchmark, models, runtime, subset_path, run_id):
    benchmark_name = os.path.splitext(os.path.basename(benchmark))[0]
    subset_name = Path(subset_path).name
    main_category = Path(subset_path).parent.name

    folder = os.path.join(
        "results",
        main_category,
        subset_name,
        sampler_name,
        benchmark_name,
    )

    os.makedirs(folder, exist_ok=True)

    output = {
        "sampler": sampler_name,
        "benchmark": benchmark_name,
        "category": main_category,
        "subset": subset_name,
        "run_id": run_id,
        "number_models": len(models),
        "runtime_seconds": runtime,
        "models": models,
    }

    filename = f"result_{run_id:03d}.json"
    with open(os.path.join(folder, filename), "w") as f:
        json.dump(output, f, indent=4)


# Run a single sampler on all benchmarks in a subset of the correct format
def run_sampler_on_subset(sampler, subset_path, run_id):
    benchmarks = get_benchmarks(subset_path, sampler.format)

    if not benchmarks:
        print(f"No {sampler.format} benchmarks found in {subset_path}")
        return

    subset_name = Path(subset_path).name
    main_category = Path(subset_path).parent.name

    print(
        f"Running {sampler.name} on {main_category}/{subset_name} ({sampler.format} format) (Run {run_id}/{NUM_RUNS})"
    )
    for benchmark in benchmarks:
        start = time.perf_counter()

        models = sampler.sample(benchmark, NUM_SAMPLES)

        runtime = time.perf_counter() - start

        save_results(
            sampler.name,
            benchmark,
            models,
            runtime,
            subset_path,
            run_id,
        )

        print(f"Generated {len(models)} models in {runtime:.4f}s on {benchmark}")


def parse_arguments():
    parser = argparse.ArgumentParser(description="Run samplers on benchmark subsets")
    parser.add_argument(
        "--subset",
        type=str,
        help="Specific subset to run (e.g., 'mix/single', 'pos/big')",
    )
    parser.add_argument(
        "--category",
        type=str,
        choices=["mix", "pos"],
        help="Run all subsets in a category (mix or pos)",
    )
    parser.add_argument(
        "--list-subsets",
        action="store_true",
        help="List all available subsets and exit",
    )
    return parser.parse_args()


def main():
    args = parse_arguments()

    rng = random.Random(42)

    # List subsets if requested
    if args.list_subsets:
        subsets = get_available_subsets()
        print("Available subsets:")
        for subset in subsets:
            print(f"  {subset}")
        return

    # Determine which subsets to run
    subsets_to_run = []

    if args.subset:
        subset_path = Path("benchmarks") / args.subset
        if subset_path.exists():
            subsets_to_run.append(str(subset_path))
        else:
            print(f"Error: Subset {args.subset} not found")
            return
    elif args.category:
        base_path = Path("benchmarks") / args.category
        if base_path.exists():
            for sub_dir in base_path.iterdir():
                if sub_dir.is_dir() and sub_dir.name in ["single", "small", "big"]:
                    subsets_to_run.append(str(sub_dir))
        else:
            print(f"Error: Category {args.category} not found")
            return
    else:
        # Default: run all subsets
        subsets_to_run = get_available_subsets()

    if not subsets_to_run:
        print("No subsets found to run")
        return

    print(f"Running on {len(subsets_to_run)} subset(s):")
    for subset in subsets_to_run:
        print(f"  {subset}")
    print(f"Number of runs per sampler: {NUM_RUNS}\n")

    # Run for each subset
    for subset_path in subsets_to_run:
        print(f"Processing subset: {subset_path}")

        samplers = get_samplers_for_subset(subset_path)

        for run_id in range(1, NUM_RUNS + 1):
            # Randomize sampler order for this run
            samplers_for_run = samplers.copy()
            rng.shuffle(samplers_for_run)

            for sampler in samplers_for_run:
                run_sampler_on_subset(sampler, subset_path, run_id)

    print("All runs completed!")


if __name__ == "__main__":
    main()
