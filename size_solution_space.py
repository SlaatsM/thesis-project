import argparse
import os
from concurrent.futures import ProcessPoolExecutor, as_completed

from z3 import Solver, sat

from util import block_model


def count_solutions_for_file(filepath, max_solutions):
    """
    Count solutions for a single SMT file, stopping at max_solutions.

    Returns:
        - filename: str
        - solution_count: int
        - status: "COMPLETE", "LIMIT", or "ERROR"
        - error_message: str or None
    """
    try:
        solver = Solver()

        with open(filepath, "r") as f:
            solver.from_string(f.read())

        count = 0

        while count < max_solutions:
            result = solver.check()

            if result != sat:
                break

            solver.add(block_model(solver.model()))
            count += 1

        status = "LIMIT" if count >= max_solutions else "COMPLETE"
        return (os.path.basename(filepath), count, status, None)

    except Exception as e:
        return (os.path.basename(filepath), 0, "ERROR", str(e))


def parse_arguments():
    parser = argparse.ArgumentParser(description="Count solutions for SMT files.")

    parser.add_argument(
        "--input-dir",
        default="benchmarks/smt",
        help="Directory containing SMT files (default: benchmarks/smt)",
    )

    parser.add_argument(
        "--output-file",
        default="solution_counts.txt",
        help="Output file for results (default: solution_counts.txt)",
    )

    parser.add_argument(
        "--max-solutions",
        type=int,
        default=250,
        help="Maximum solutions to count per file (default: 250)",
    )

    return parser.parse_args()


def main():
    args = parse_arguments()

    # Find all SMT files in the directory
    smt_files = []
    for filename in os.listdir(args.input_dir):
        if filename.endswith(".smt2"):
            filepath = os.path.join(args.input_dir, filename)
            if os.path.isfile(filepath):
                smt_files.append(filepath)

    # Process files in parallel
    results = {}
    with ProcessPoolExecutor() as executor:
        futures = {
            executor.submit(
                count_solutions_for_file, filepath, args.max_solutions
            ): filepath
            for filepath in smt_files
        }

        for future in as_completed(futures):
            filename, count, status, error = future.result()
            results[filename] = (count, status, error)

    # Write results to file
    with open(args.output_file, "w") as f:
        # Header
        f.write(f"{'File':<25} {'Solutions':<15} {'Status':<10}\n")
        f.write("-" * 80 + "\n")

        # Results
        complete = 0
        limit_reached = 0
        failed = 0
        total_solutions = 0

        for filename in sorted(results.keys()):
            count, status, error = results[filename]
            if status == "ERROR":
                f.write(f"{filename:<25} {'ERROR':<15} {error}\n")
                failed += 1
            elif status == "LIMIT":
                f.write(f"{filename:<25} {count:<15} LIMIT (>{args.max_solutions})\n")
                limit_reached += 1
            else:  # status == "COMPLETE"
                f.write(f"{filename:<25} {count:<15} COMPLETE\n")
                complete += 1
                total_solutions += count

        # Summary
        f.write("\n\nSUMMARY\n")
        f.write("-" * 80 + "\n")
        f.write(f"Total files processed: {len(results)}\n")
        f.write(f"Max solutions per file: {args.max_solutions}\n")
        f.write(f"Directory: {args.input_dir}\n")
        f.write(f"COMPLETE: {complete}\n")
        f.write(f"LIMIT: {limit_reached}\n")
        f.write(f"ERROR: {failed}\n")


if __name__ == "__main__":
    main()
