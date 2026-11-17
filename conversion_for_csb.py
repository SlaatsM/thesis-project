"""
Convert a restricted QF_LIA problem (bounded integer variables + linear arithmetic formula) into an equisatisfiable QF_BV SMT-LIB2 file.

The converter:
  1. Parses variable domains.
  2. Parses the formula as an expression.
  3. Computes an integer interval [lo, hi] for every arithmetic subexpression in the formula via interval arithmetic.
  4. Picks the smallest bit-width N such that every one of those intervals (and every variable domain) fits inside the signed
     range [-2^(N-1), 2^(N-1)-1]. This guarantees no wraparound anywhere in the translated formula.
  5. Emits QF_BV declarations, domain constraints, and the formula with +/-/* replaced by bvadd/bvsub/bvmul and comparisons replaced by
     their signed counterparts (bvsge/bvsle/bvsgt/bvslt). Integer literals are encoded as two's-complement bitvector constants of width N.
"""

import re
from pathlib import Path
from util import parse_simple_file


def is_int_literal(tok):
    return isinstance(tok, str) and re.compile(r"^-?\d+$").match(tok) is not None


def to_twos_complement_bits(v, width):
    if v < 0:
        v = (1 << width) + v
    if v < 0 or v >= (1 << width):
        raise ConversionError(f"Value {v} does not fit in {width}-bit two's complement")
    return format(v, f"0{width}b")


def separate_parens(s):
    return s.replace("(", " ( ").replace(")", " ) ").split()


# Parse expression into a nested list-of-strings
def parse_expr(tokens):
    if not tokens:
        raise SyntaxError("Unexpected EOF while parsing")
    tok = tokens.pop(0)
    if tok == "(":
        lst = []
        while tokens and tokens[0] != ")":
            lst.append(parse_expr(tokens))
        if not tokens:
            raise SyntaxError("Missing closing paren")
        tokens.pop(0)  # pop ')'
        return lst
    elif tok == ")":
        raise SyntaxError("Unexpected )")
    else:
        return tok


# String to AST
def parse_all(text):
    tokens = separate_parens(text)
    out = []
    while tokens:
        out.append(parse_expr(tokens))
    return out


# AST to string
def ast_to_str(node):
    if isinstance(node, list):
        return "(" + " ".join(ast_to_str(c) for c in node) + ")"
    return node


BOOL_CONNECTIVES = {"and", "or", "not", "=>"}
COMPARISON_OPS = {"=", ">=", "<=", ">", "<"}


class ConversionError(Exception):
    pass


# Compute min and max values for all arithmetic subterms
def eval_interval(node, var_domains, extremes):
    # Leaf node
    if isinstance(node, str):
        if is_int_literal(node):
            v = int(node)
            iv = (v, v)
        elif node in var_domains:
            domain_values = var_domains[node]
            iv = (min(domain_values), max(domain_values))
        else:
            raise ConversionError(f"Unknown identifier '{node}' in formula")
        extremes.append(iv)
        return iv

    if not isinstance(node, list) or not node:
        raise ConversionError(f"Malformed arithmetic term: {ast_to_str(node)}")

    # Arithmetic subexpression
    if len(node) != 3:
        raise ConversionError(
            f"Arithmetic operator must have exactly 2 arguments: {ast_to_str(node)}"
        )

    head = node[0]
    args = node[1:]

    if head == "+":
        lo1, hi1 = eval_interval(args[0], var_domains, extremes)
        lo2, hi2 = eval_interval(args[1], var_domains, extremes)

        iv = (lo1 + lo2, hi1 + hi2)

    elif head == "-":
        lo1, hi1 = eval_interval(args[0], var_domains, extremes)
        lo2, hi2 = eval_interval(args[1], var_domains, extremes)

        # For subtraction, the min is lo1 - hi2 and max is hi1 - lo2
        iv = (lo1 - hi2, hi1 - lo2)

    elif head == "*":
        if is_int_literal(args[0]) and not is_int_literal(args[1]):
            const_val = int(args[0])
            lo, hi = eval_interval(args[1], var_domains, extremes)
        else:
            raise ConversionError(
                f"Multiplication must be of form (c * v) where c is a constant: {ast_to_str(node)}"
            )

        candidates = [lo * const_val, hi * const_val]
        iv = (min(candidates), max(candidates))

    else:
        raise ConversionError(f"Unsupported arithmetic operator '{head}'")

    extremes.append(iv)
    return iv


# Traverse AST of formula and use eval_interval to compute min/max for all arithmetic subterms
def walk(node, var_domains, extremes):
    if not isinstance(node, list) or not node:
        raise ConversionError(f"Malformed formula term: {ast_to_str(node)}")

    head = node[0]
    args = node[1:]

    if head in BOOL_CONNECTIVES:
        for a in args:
            walk(a, var_domains, extremes)
    elif head in COMPARISON_OPS:
        for a in args:
            eval_interval(a, var_domains, extremes)
    else:
        raise ConversionError(f"Unsupported operator '{head}'")


# For the range [lo, hi], find the smallest signed bit-width N such that the whole range fits in [-2^(N-1), 2^(N-1)-1].
def min_signed_width(lo, hi):
    n = 1
    while True:
        lower = -(1 << (n - 1))
        upper = (1 << (n - 1)) - 1
        if lo >= lower and hi <= upper:
            return n
        n += 1


CMP_MAP = {">=": "bvsge", "<=": "bvsle", ">": "bvsgt", "<": "bvslt"}


def convert_term(node, var_domains, width):
    if isinstance(node, str):
        if is_int_literal(node):
            bits = to_twos_complement_bits(int(node), width)
            return f"#b{bits}"
        elif node in var_domains:
            return node
        else:
            raise ConversionError(f"Unknown identifier '{node}'")

    head, args = node[0], node[1:]

    op_map = {"+": "bvadd", "-": "bvsub", "*": "bvmul"}

    if head in op_map:
        if len(args) != 2:
            raise ConversionError(f"'{head}' expected 2 arguments, got {len(args)}")
        converted = [convert_term(a, var_domains, width) for a in args]
        return [op_map[head]] + converted

    raise ConversionError(f"Unsupported arithmetic operator '{head}'")


def convert_formula(node, var_domains, width):
    if not isinstance(node, list) or not node:
        raise ConversionError(f"Malformed formula term: {ast_to_str(node)}")

    head, args = node[0], node[1:]

    if head in BOOL_CONNECTIVES:
        return [head] + [convert_formula(a, var_domains, width) for a in args]

    if head == "=":
        return [head] + [convert_term(a, var_domains, width) for a in args]

    if head in CMP_MAP:
        return [CMP_MAP[head]] + [convert_term(a, var_domains, width) for a in args]

    raise ConversionError(f"Unsupported operator '{head}'")


# Convert the input file to QF_BV and save to output_dir
def convert(input_file, output_dir):
    variables, domains, constraint = parse_simple_file(input_file)

    # Parse the formula from the constraint text
    formula_expr = parse_all(constraint)
    if len(formula_expr) != 1:
        raise ValueError("Expected exactly one top-level formula expression")
    formula = formula_expr[0]

    # Unwrap 'assert' if present
    if isinstance(formula, list) and formula and formula[0] == "assert":
        if len(formula) != 2:
            raise ValueError("Malformed (assert ...)")
        body = formula[1]
    else:
        body = formula

    # Convert domains from list of values to (min, max) tuples for interval analysis
    domain_ranges = {v: (min(domains[v]), max(domains[v])) for v in variables}

    extremes = []
    # Every variable's own domain always counts as an extreme, even if it never appears in the formula.
    for v in variables:
        lo, hi = domain_ranges[v]
        extremes.append((lo, hi))

    walk(body, domain_ranges, extremes)

    global_lo = min(lo for lo, hi in extremes)
    global_hi = max(hi for lo, hi in extremes)
    width = min_signed_width(global_lo, global_hi)

    converted_body = convert_formula(body, domain_ranges, width)

    lines = []
    lines.append("(set-logic QF_BV)")
    lines.append("")
    lines.append(
        f"; Bit width chosen: {width} "
        f"(covers range [{global_lo}, {global_hi}] found in domains and all intermediate sub-expressions, so prevents wraparound)"
    )
    lines.append("")
    lines.append("; Variable declarations")
    for v in variables:
        lines.append(f"(declare-const {v} (_ BitVec {width}))")
    lines.append("")
    lines.append("; Domain constraints")
    for v in variables:
        domain_values = domains[v]
        if len(domain_values) == 1:
            # Single value
            val = domain_values[0]
            lines.append(f"(assert (= {v} #b{to_twos_complement_bits(val, width)}))")
        else:
            # Create a disjunction if multiple values/ranges
            constraints = []
            # Group consecutive values into ranges for more compact constraints
            ranges = []
            start = domain_values[0]
            end = domain_values[0]
            for val in domain_values[1:]:
                if val == end + 1:
                    end = val
                else:
                    ranges.append((start, end))
                    start = val
                    end = val
            ranges.append((start, end))

            for lo, hi in ranges:
                if lo == hi:
                    constraints.append(
                        f"(= {v} #b{to_twos_complement_bits(lo, width)})"
                    )
                else:
                    constraints.append(
                        f"(and (bvsge {v} #b{to_twos_complement_bits(lo, width)}) "
                        f"(bvsle {v} #b{to_twos_complement_bits(hi, width)}))"
                    )

            if len(constraints) == 1:
                lines.append(f"(assert {constraints[0]})")
            else:
                lines.append(f"(assert (or {' '.join(constraints)}))")

    lines.append("")
    lines.append("; Formula constraint")
    lines.append(f"(assert {ast_to_str(converted_body)})")
    lines.append("")
    lines.append("(check-sat)")

    smt2_text = "\n".join(lines)

    # Get the original filename without extension and add .smt2
    input_path = Path(input_file)
    output_file = Path(output_dir) / f"{input_path.stem}.smt2"

    # Write the converted content
    with open(output_file, "w") as f:
        f.write(smt2_text)

    return output_file
