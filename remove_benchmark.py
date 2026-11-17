import sys
from pathlib import Path


def remove_benchmark(benchmark_number, subset_dir=None):
    """
    Remove a benchmark file from all subdirectories (smt, prolog, simple)

    Args:
        benchmark_number: The number of the benchmark to remove (e.g., 3 for constraint_0003)
        subset_dir: Optional subdirectory within benchmarks (e.g., "my_subset")
    """
    base_path = Path("benchmarks")
    subdirs = ["smt", "prolog", "simple"]
    extensions = {"smt": ".smt2", "prolog": ".pl", "simple": ".txt"}
    filename = f"constraint_{benchmark_number:04d}"

    for subdir in subdirs:
        if subset_dir:
            filepath = (
                base_path / subset_dir / subdir / f"{filename}{extensions[subdir]}"
            )
        else:
            filepath = base_path / subdir / f"{filename}{extensions[subdir]}"

        if filepath.exists():
            filepath.unlink()
            print(f"Removed: {filepath}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python remove_benchmark.py <benchmark_number> [subset_dir]")
        print("  benchmark_number: The number of the benchmark to remove")
        print("  subset_dir: Optional subdirectory within benchmarks")
        sys.exit(1)

    try:
        benchmark_number = int(sys.argv[1])
    except ValueError:
        print(f"Error: '{sys.argv[1]}' is not a valid number")
        sys.exit(1)

    subset_dir = sys.argv[2] if len(sys.argv) > 2 else None

    remove_benchmark(benchmark_number, subset_dir)
