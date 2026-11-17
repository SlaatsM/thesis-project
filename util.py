from z3 import And, Or


# Functions to convert Z3 values and extract and block SMT models
def extract_model(model):
    """
    Convert Z3 model into JSON-friendly dictionary.
    """

    result = {}

    for declaration in model.decls():
        name = declaration.name()

        value = model[declaration]

        result[name] = z3_value(value)

    return result


def z3_value(value):
    """
    Convert Z3 values into Python values.

    Current benchmarks use only Int variables.
    """

    return value.as_long()


def block_model(model):
    """
    Create:

    Or(
        x != value_x,
        y != value_y,
        ...
    )

    """

    constraints = []

    for declaration in model.decls():
        variable = declaration()

        value = model[declaration]

        constraints.append(variable != value)

    return Or(constraints)


# Functions to parse an simple file and extract variables, domains, and constraints
def parse_simple_file(problem_file: str) -> tuple[list[str], dict[str, list[int]], str]:
    with open(problem_file, "r") as f:
        content = f.read()

    # Split into variables and constraint sections
    parts = content.split("Formula constraint:")
    variables_section = parts[0].replace("Variables and their domains:", "").strip()
    constraint_section = parts[1].strip() if len(parts) > 1 else ""

    # Parse variables and domains
    variables = []
    domains = {}

    for line in variables_section.split("\n"):
        line = line.strip()
        if not line:
            continue

        if ":" in line:
            var_name, domain_str = line.split(":", 1)
            var_name = var_name.strip()
            domain_str = domain_str.strip()

            variables.append(var_name)
            domains[var_name] = parse_domain(domain_str)

    return variables, domains, constraint_section


def parse_domain(domain_str: str) -> list[int]:
    values = []

    # Split by commas for multiple ranges/values
    for part in domain_str.split(","):
        part = part.strip()

        if ".." in part:
            # Range
            start, end = part.split("..")
            start = int(start.strip())
            end = int(end.strip())
            values.extend(range(start, end + 1))
        else:
            # Single value
            values.append(int(part))

    return sorted(set(values))


# Function to express the constraint 'z3var in domain' as a disjunction of contiguous runs
def membership(z3var, domain):
    """."""
    runs = []
    start = prev = domain[0]

    for value in domain[1:]:
        if value != prev + 1:
            runs.append((start, prev))
            start = value
        prev = value

    runs.append((start, prev))

    clauses = [
        z3var == lo if lo == hi else And(lo <= z3var, z3var <= hi) for lo, hi in runs
    ]

    return clauses[0] if len(clauses) == 1 else Or(*clauses)
