"""
Generate benchmark files in SMT2, Prolog, and iteratively_halve formats.
"""

import glob
import os

from generate_constraints import (
    ConstraintConfig,
    ConstraintGenerator,
)
from generate_structures import (
    StructureConfig,
    StructureGenerator,
    extract_int_variables,
)
from prolog_converter import PrologConverter
from simple_converter import SimpleConverter
from smt2_converter import SMT2Converter


def find_next_counter(directory: str, base_name: str, extension: str) -> int:

    # Find all files matching the pattern
    pattern = f"{base_name}_*{extension}"
    existing_files = glob.glob(os.path.join(directory, pattern))

    if not existing_files:
        return 1

    # Extract counters from filenames
    counters = []

    prefix = f"{base_name}_"

    for filepath in existing_files:
        filename = os.path.basename(filepath)
        if filename.startswith(prefix) and filename.endswith(extension):
            counter_str = filename[len(prefix) : -len(extension)]
            if counter_str.isdigit():
                counters.append(int(counter_str))

    if not counters:
        return 1

    return max(counters) + 1


def generate_files(
    output_dir: str,
    smt_subdir: str,
    prolog_subdir: str,
    simple_subdir: str,
    base_name: str,
    smt_extension: str,
    prolog_extension: str,
    simple_extension: str,
    counter: int,
) -> dict[str, str]:

    # Generate structures
    struct_gen = StructureGenerator(StructureConfig)
    roots = struct_gen.gen_roots()

    # Extract variables and their domains
    variables_info = extract_int_variables(roots)
    variable_names = [var.path for var in variables_info]
    var_domains = {var.path: var.domain for var in variables_info}

    print(f"Generated {len(variable_names)} variable(s):")
    for var in variable_names:
        print(f"  {var} : {var_domains[var]}")

    # Generate constraints
    constraint_gen = ConstraintGenerator(ConstraintConfig, variable_names)
    formulas = constraint_gen.gen_formulas()

    print(f"\nGenerated {len(formulas)} formula(s)")
    for i, phi in enumerate(formulas, 1):
        print(f"  phi{i} = {phi}")

    # Generate contents
    smt2_content = SMT2Converter(variable_names, var_domains).convert(formulas)
    prolog_content = PrologConverter(variable_names, var_domains).convert(formulas)
    simple_content = SimpleConverter(variable_names, var_domains).convert(formulas)

    # Create filenames with counter
    smt_filename = f"{base_name}_{counter:04d}{smt_extension}"
    prolog_filename = f"{base_name}_{counter:04d}{prolog_extension}"
    simple_filename = f"{base_name}_{counter:04d}{simple_extension}"

    smt_filepath = os.path.join(output_dir, smt_subdir, smt_filename)
    prolog_filepath = os.path.join(output_dir, prolog_subdir, prolog_filename)
    simple_filepath = os.path.join(output_dir, simple_subdir, simple_filename)

    # Write SMT2 file
    with open(smt_filepath, "w") as f:
        f.write(smt2_content)
    print(f"\nSMT2 constraint(s) written to {smt_filepath}")

    # Write Prolog file
    with open(prolog_filepath, "w") as f:
        f.write(prolog_content)
    print(f"Prolog constraint(s) written to {prolog_filepath}")

    # Write simple file
    with open(simple_filepath, "w") as f:
        f.write(simple_content)
    print(f"Simple constraint(s) written to {simple_filepath}")

    return {"smt2": smt_filepath, "prolog": prolog_filepath, "simple": simple_filepath}


def generate_files_multiple(
    num_files: int,
    output_dir: str,
    smt_subdir: str,
    prolog_subdir: str,
    base_name: str,
    smt_extension: str,
    prolog_extension: str,
    simple_subdir: str,
    simple_extension: str,
) -> list[dict[str, str]]:

    # Find the next available counter in both directories
    smt_dir = os.path.join(output_dir, smt_subdir)
    prolog_dir = os.path.join(output_dir, prolog_subdir)
    simple_dir = os.path.join(output_dir, simple_subdir)
    smt_counter = find_next_counter(smt_dir, base_name, smt_extension)
    prolog_counter = find_next_counter(prolog_dir, base_name, prolog_extension)
    simple_counter = find_next_counter(simple_dir, base_name, simple_extension)

    # Use the maximum counter to ensure no overwrites
    next_counter = max(smt_counter, prolog_counter, simple_counter)

    generated_files = []

    for i in range(num_files):
        print(f"Generating file pair {i + 1}/{num_files}")

        filepaths = generate_files(
            output_dir=output_dir,
            base_name=base_name,
            smt_extension=smt_extension,
            prolog_extension=prolog_extension,
            simple_extension=simple_extension,
            smt_subdir=smt_subdir,
            prolog_subdir=prolog_subdir,
            simple_subdir=simple_subdir,
            counter=next_counter + i,
        )

        generated_files.append(filepaths)

    print(f"Generated {len(generated_files)} file pair(s) in {output_dir}")
    print(f"  SMT2 files in: {os.path.join(output_dir, smt_subdir)}")
    print(f"  Prolog files in: {os.path.join(output_dir, prolog_subdir)}")
    print(f"  Simple files in: {os.path.join(output_dir, simple_subdir)}")

    return generated_files


if __name__ == "__main__":
    generate_files_multiple(
        num_files=1,
        output_dir="benchmarks",
        smt_subdir="smt",
        prolog_subdir="prolog",
        base_name="constraint",
        smt_extension=".smt2",
        prolog_extension=".pl",
        simple_subdir="simple",
        simple_extension=".txt",
    )
