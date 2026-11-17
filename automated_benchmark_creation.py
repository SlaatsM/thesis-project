"""
Fully automated benchmark generation:
- Generates Prolog (optional), SMT2 and 'simple' files.
- Validates each new benchmark using Z3.
- If UNSAT (0 models), deletes it and regenerates with the SAME counter.
- If SAT and has at least MIN_SOLUTIONS (and optionally <= MAX_SOLUTIONS), keeps it.
- Stops once TARGET_COUNT satisfiable benchmarks have been kept.
"""

import os
import sys
import time
import argparse
from z3 import Solver, sat

from generate_structures import (
    StructureConfig,
    StructureGenerator,
    extract_int_variables,
)
from generate_constraints import ConstraintConfig, ConstraintGenerator
from generate_benchmarks import find_next_counter
from smt2_converter import SMT2Converter
from simple_converter import SimpleConverter
from prolog_converter import PrologConverter
from util import block_model
from remove_benchmark import remove_benchmark


OUTPUT_DIR = "./benchmarks"
BASE_NAME = "constraint"

# Subdirectories
SMT_SUBDIR = "smt"
SIMPLE_SUBDIR = "simple"
PROLOG_SUBDIR = "prolog"

# File extensions
SMT_EXTENSION = ".smt2"
SIMPLE_EXTENSION = ".txt"
PROLOG_EXTENSION = ".pl"

# Default values (can be overridden by command line)
DEFAULT_TARGET_COUNT = 10
DEFAULT_MAX_RUNTIME_SECONDS = 30 * 60  # 30 minutes
DEFAULT_MIN_SOLUTIONS = 1
DEFAULT_MAX_SOLUTIONS = None  # None means infinite


class Sampler:
    def sample_until_limit(self, smt_file, min_solutions, max_solutions=None):
        """
        Sample models from an SMT2 file by blocking solutions.

        Returns:
            - count: Number of models found (0 if UNSAT)
            - limit_reached: True if we exceeded max_solutions (only relevant when max_solutions is specified)
        """
        solver = Solver()

        with open(smt_file, "r") as f:
            solver.from_string(f.read())

        count = 0
        limit_reached = False

        while True:
            if max_solutions is None and count >= min_solutions:
                break

            if max_solutions is not None and count >= max_solutions + 1:
                limit_reached = True
                break

            if solver.check() != sat:
                break

            solver.add(block_model(solver.model()))
            count += 1

        return count, limit_reached


def generate_single(
    counter: int, include_prolog: bool = False, subset_dir: str = ""
) -> dict:
    # Generate structures
    struct_gen = StructureGenerator(StructureConfig)
    roots = struct_gen.gen_roots()

    # Extract variables and their domains
    variables_info = extract_int_variables(roots)
    variable_names = [var.path for var in variables_info]
    var_domains = {var.path: var.domain for var in variables_info}

    # Generate constraints
    constraint_gen = ConstraintGenerator(ConstraintConfig, variable_names)
    formulas = constraint_gen.gen_formulas()

    # Build output paths
    smt_dir = os.path.join(OUTPUT_DIR, subset_dir, SMT_SUBDIR)
    simple_dir = os.path.join(OUTPUT_DIR, subset_dir, SIMPLE_SUBDIR)

    os.makedirs(smt_dir, exist_ok=True)
    os.makedirs(simple_dir, exist_ok=True)

    # Generate contents
    smt2_content = SMT2Converter(variable_names, var_domains).convert(formulas)
    simple_content = SimpleConverter(variable_names, var_domains).convert(formulas)

    # Create filenames with counter
    smt_filename = f"{BASE_NAME}_{counter:04d}{SMT_EXTENSION}"
    simple_filename = f"{BASE_NAME}_{counter:04d}{SIMPLE_EXTENSION}"

    smt_filepath = os.path.join(smt_dir, smt_filename)
    simple_filepath = os.path.join(simple_dir, simple_filename)

    with open(smt_filepath, "w") as f:
        f.write(smt2_content)
    with open(simple_filepath, "w") as f:
        f.write(simple_content)

    result = {"smt2": smt_filepath, "simple": simple_filepath}

    # Generate Prolog if requested
    if include_prolog:
        prolog_dir = os.path.join(OUTPUT_DIR, subset_dir, PROLOG_SUBDIR)
        os.makedirs(prolog_dir, exist_ok=True)

        prolog_filename = f"{BASE_NAME}_{counter:04d}{PROLOG_EXTENSION}"
        prolog_filepath = os.path.join(prolog_dir, prolog_filename)

        prolog_content = PrologConverter(variable_names, var_domains).convert(formulas)

        with open(prolog_filepath, "w") as f:
            f.write(prolog_content)

        result["prolog"] = prolog_filepath

    return result


def parse_arguments():
    parser = argparse.ArgumentParser(
        description="Generate benchmarks with optional Prolog files and configurable solution counts."
    )
    parser.add_argument(
        "--subdir",
        required=True,
        help="Subdirectory name between /benchmarks and /smt or /simple",
    )
    parser.add_argument(
        "--prolog",
        action="store_true",
        help="Generate Prolog files in addition to SMT2 and simple files",
    )
    parser.add_argument(
        "--min-solutions",
        type=int,
        default=DEFAULT_MIN_SOLUTIONS,
        help=f"Minimum number of solutions required to keep a benchmark (default: {DEFAULT_MIN_SOLUTIONS})",
    )
    parser.add_argument(
        "--max-solutions",
        type=int,
        default=DEFAULT_MAX_SOLUTIONS,
        help=f"Maximum number of solutions allowed (default: {DEFAULT_MAX_SOLUTIONS}/infinite)",
    )
    parser.add_argument(
        "--target",
        type=int,
        default=DEFAULT_TARGET_COUNT,
        help=f"Number of satisfiable benchmarks to generate (default: {DEFAULT_TARGET_COUNT})",
    )
    parser.add_argument(
        "--timeout",
        type=int,
        default=DEFAULT_MAX_RUNTIME_SECONDS,
        help=f"Maximum runtime in seconds (default: {DEFAULT_MAX_RUNTIME_SECONDS})",
    )
    return parser.parse_args()


def main():
    args = parse_arguments()

    # Set up directories
    smt_dir = os.path.join(OUTPUT_DIR, args.subdir, SMT_SUBDIR)
    simple_dir = os.path.join(OUTPUT_DIR, args.subdir, SIMPLE_SUBDIR)
    os.makedirs(smt_dir, exist_ok=True)
    os.makedirs(simple_dir, exist_ok=True)

    # Validate arguments
    if args.min_solutions < 1:
        print("Error: min-solutions must be at least 1")
        sys.exit(1)

    if args.max_solutions is not None and args.max_solutions < args.min_solutions:
        print(
            f"Error: max-solutions ({args.max_solutions}) must be >= min-solutions ({args.min_solutions})"
        )
        sys.exit(1)

    # Find next counter
    counter = max(
        find_next_counter(smt_dir, BASE_NAME, SMT_EXTENSION),
        find_next_counter(simple_dir, BASE_NAME, SIMPLE_EXTENSION),
    )

    sampler = Sampler()

    kept = 0
    attempts = 0
    start_time = time.monotonic()

    print("Starting benchmark generation with:")
    print(f"  Target: {args.target} benchmarks")
    print(f"  Min solutions: {args.min_solutions}")
    print(
        f"  Max solutions: {args.max_solutions if args.max_solutions is not None else 'infinite'}"
    )
    print(f"  Timeout: {args.timeout / 60:.1f} minutes")
    print(f"  Prolog: {'Yes' if args.prolog else 'No'}")
    print(f"  Subdir: {args.subdir}")
    print("=" * 60)

    while kept < args.target:
        elapsed = time.monotonic() - start_time
        if elapsed >= args.timeout:
            print(f"\nReached time limit of {args.timeout / 60:.1f} minutes, stopping.")
            break

        attempts += 1

        filepaths = generate_single(counter, args.prolog, args.subdir)

        try:
            num_models, limit_reached = sampler.sample_until_limit(
                filepaths["smt2"], args.min_solutions, args.max_solutions
            )
        except Exception as e:
            print(f"  Sampler error on benchmark {counter:04d}: {e}")
            print("  Treating as UNSAT/invalid, removing and retrying.")
            remove_benchmark(counter, args.subdir)
            continue

        # Check if we have at least min_solutions
        if num_models < args.min_solutions:
            print(
                f"  Too few solutions ({num_models} < {args.min_solutions}) - removing and retrying"
            )
            remove_benchmark(counter, args.subdir)
            continue

        # If max_solutions is specified, check if we exceeded it
        if args.max_solutions is not None and limit_reached:
            print(
                f"  Too many solutions (> {args.max_solutions}) - removing and retrying"
            )
            remove_benchmark(counter, args.subdir)
            continue

        # If we get here, the benchmark is valid
        kept += 1

        if args.max_solutions is None:
            print(
                f"  Kept benchmark {counter:04d} (>= {args.min_solutions} solutions, max unlimited)"
            )
        else:
            print(
                f"  Kept benchmark {counter:04d} ({num_models} solutions, within [{args.min_solutions}, {args.max_solutions}])"
            )

        counter += 1

    total_elapsed = time.monotonic() - start_time

    if kept < args.target:
        print(
            f"\nStopped after {total_elapsed / 60:.1f} minutes and {attempts} attempts without reaching target ({kept}/{args.target} kept)."
        )
    else:
        print(
            f"\nDone: generated {kept} satisfiable benchmarks in {attempts} attempts({total_elapsed / 60:.1f} minutes)."
        )


if __name__ == "__main__":
    main()
