"""
Random generator for the grammar:

    B ::= Int(n, d) | Array(n, s, B) | Hash(n, F)
    F ::= eps | B; F

Where:
    n = an auto-generated name/id for the node
    d = an integer DOMAIN (see Domain below): a range (0..100), a list of
        separate values (1,3,7,20), or a combination of both (0..10,15,20..40)
    s = the size (length) of an Array
    F = a sequence of B's (the "fields" of a Hash) -- possibly empty (eps)

Domain:
Integer domains: d ::= range | list | combination of both

Everything that controls the shape of the generated structures lives in the StructureConfig dataclass, so you can tweak
it without touching the generation logic.

On top of generation, this module can also walk a generated structure and
extract every integer-valued access path in it (the "variables" of the
constraint language), e.g.:
    h1.i2            (a direct integer field)
    a3[0]            (an array of ints)
    a3[0].i4         (a nested integer field reached through an array)
"""

import random
from dataclasses import dataclass

# A domain is stored as an ordered list of "parts". Each part is either:
#   - a (lo, hi) tuple  -> a range lo..hi (inclusive)
#   - a single int      -> one discrete value
DomainPart = tuple[int, int] | int


@dataclass
class Domain:
    parts: list[DomainPart]

    def __str__(self) -> str:
        pieces = []
        for p in self.parts:
            if isinstance(p, tuple):
                pieces.append(f"{p[0]}..{p[1]}")
            else:
                pieces.append(str(p))
        return ",".join(pieces)


# Node types
class B:
    """Base class for the B non-terminal (Int | Array | Hash)."""


@dataclass
class IntNode(B):
    n: str
    d: Domain

    def __str__(self) -> str:
        return f"Int({self.n}, {self.d})"


@dataclass
class ArrayNode(B):
    n: str
    s: int
    elem: B

    def __str__(self) -> str:
        return f"Array({self.n}, {self.s}, {self.elem})"


@dataclass
class HashNode(B):
    n: str
    fields: list[B]

    def __str__(self) -> str:
        body = "; ".join(str(f) for f in self.fields)
        return f"Hash({self.n}, {body if body else 'eps'})"


# Configuration
@dataclass
class StructureConfig:
    num_roots_range: tuple[int, int] = (
        1,
        5,
    )  # range for number of top-level B's to generate
    max_depth: int = 3  # deepest allowed nesting of Array/Hash

    # Relative chances of picking each B alternative.
    weight_int: float = 0.5
    weight_array: float = 0.25
    weight_hash: float = 0.25

    # Relative chances of each *kind* of domain (d) being generated for an Int.
    domain_weight_interval: float = 0.6
    domain_weight_list: float = 0.2
    domain_weight_combo: float = 0.2

    domain_list_size_range: tuple[int, int] = (
        2,
        5,
    )  # how many values in a "list" domain
    domain_combo_parts_range: tuple[int, int] = (
        2,
        4,
    )  # how many parts in a "combo" domain

    # bounds of Int. GProlog doesn't allow negative integers in fd_domain, so in that case we set the lower bound to 0.
    domain_bounds: tuple[int, int] = (
        -1000,
        1000,
    )

    # Array sizing
    array_size_range: tuple[int, int] = (1, 6)

    # Hash number of fields
    hash_field_count_range: tuple[int, int] = (1, 4)


# Generator
class StructureGenerator:
    def __init__(self, config: StructureConfig):
        self.config = config
        self._counter = 0

    def _next_name(self, prefix: str) -> str:
        self._counter += 1
        return f"{prefix}{self._counter}"

    def _choose_kind(self, depth: int) -> str:
        cfg = self.config
        # Force a leaf once we've hit the max nesting depth, so recursion always terminates.
        if depth >= cfg.max_depth:
            return "Int"

        population = ["Int", "Array"]
        weights = [cfg.weight_int, cfg.weight_array]

        # Only include Hash if it still has room for its own field-generation layer before hitting max_depth
        if depth < cfg.max_depth - 1:
            population.append("Hash")
            weights.append(cfg.weight_hash)

        return random.choices(population=population, weights=weights, k=1)[0]

    def gen_domain(self) -> Domain:
        cfg = self.config
        kind = random.choices(
            population=["range", "list", "combo"],
            weights=[
                cfg.domain_weight_interval,
                cfg.domain_weight_list,
                cfg.domain_weight_combo,
            ],
            k=1,
        )[0]

        if kind == "range":
            return Domain([self._gen_range_part()])

        if kind == "list":
            count = random.randint(*cfg.domain_list_size_range)
            values = sorted({self._gen_value_part() for _ in range(count)})
            return Domain(list(values))

        # kind == "combo":
        count = random.randint(*cfg.domain_combo_parts_range)
        parts: list[DomainPart] = []
        for _ in range(count):
            if random.random() < 0.5:
                parts.append(self._gen_range_part())
            else:
                parts.append(self._gen_value_part())
        return simplify_domain(Domain(parts))

    def _gen_value_part(self) -> int:
        return random.randint(*self.config.domain_bounds)

    def _gen_range_part(self) -> tuple[int, int]:
        lo, hi = sorted(
            random.sample(
                range(self.config.domain_bounds[0], self.config.domain_bounds[1] + 1), 2
            )
        )
        return (lo, hi)

    def gen_B(self, depth: int) -> B:
        kind = self._choose_kind(depth)
        cfg = self.config

        if kind == "Int":
            n = self._next_name("i")
            d = self.gen_domain()
            return IntNode(n, d)

        if kind == "Array":
            n = self._next_name("a")
            s = random.randint(*cfg.array_size_range)
            elem = self.gen_B(depth + 1)
            return ArrayNode(n, s, elem)

        # kind == "Hash"
        n = self._next_name("h")
        fields = self.gen_F(depth + 1)
        return HashNode(n, fields)

    def gen_F(self, depth: int) -> list[B]:
        cfg = self.config
        if depth >= cfg.max_depth:
            return []  # eps: no room left to nest further
        num_fields = random.randint(*cfg.hash_field_count_range)
        return [self.gen_B(depth) for _ in range(num_fields)]

    def gen_roots(self) -> list[B]:
        num_roots = random.randint(*self.config.num_roots_range)
        return [self.gen_B(depth=0) for _ in range(num_roots)]


def simplify_domain(domain: Domain) -> Domain:
    """
    Function that sorts the parts of a domain in ascending order and merges overlapping ranges.

    Examples:
    - Domain(parts=[8, (6, 10)]) -> Domain(parts=[(6, 10)])
    - Domain(parts=[(2, 7), (4, 9)]) -> Domain(parts=[(2, 9)])
    - Domain(parts=[1, 3, (5, 7), (6, 10), 12]) -> Domain(parts=[1, 3, (5, 10), 12])
    - Domain(parts=[5, (1, 3)]) -> Domain(parts=[(1, 3), 5])
    """

    if not domain.parts:
        return Domain([])

    # Convert everything to intervals
    intervals = []
    for part in domain.parts:
        if isinstance(part, int):
            intervals.append((part, part))
        else:
            intervals.append(part)

    # Sort and merge
    intervals.sort()
    merged = []
    for start, end in intervals:
        if not merged or start > merged[-1][1] + 1:
            merged.append([start, end])
        else:
            merged[-1][1] = max(merged[-1][1], end)

    # Convert back to Domain parts
    result = []
    for start, end in merged:
        if start == end:
            result.append(start)
        else:
            result.append((start, end))

    return Domain(result)


# Integer-variable extraction
@dataclass
class Variable:
    path: str
    domain: Domain

    def __str__(self) -> str:
        return f"{self.path} : {self.domain}"


def extract_int_variables(roots: list[B]) -> list[Variable]:
    variables: list[Variable] = []

    def walk(node: B, path: str, array_indices: list[int]) -> None:
        if isinstance(node, IntNode):
            variables.append(Variable(path, node.d))
        elif isinstance(node, ArrayNode):
            # For each index in the array, recursively walk the element
            for idx in range(node.s):
                # Create the path with the numeric index
                indexed_path = f"{path}[{idx}]"
                # Pass the current index along for potential nested arrays
                walk(node.elem, indexed_path, array_indices + [idx])
        elif isinstance(node, HashNode):
            for f in node.fields:
                # For hash fields, we don't add indices, just the field name
                walk(f, f"{path}.{f.n}", array_indices)

    for root in roots:
        walk(root, root.n, [])

    return variables


if __name__ == "__main__":
    gen = StructureGenerator(StructureConfig())
    roots = gen.gen_roots()

    print("Generated structure(s):")
    for i, root in enumerate(roots, start=1):
        print(f"  B{i} = {root}")

    print("\nExtracted integer variable(s):")
    for var in extract_int_variables(roots):
        print(f"  {var}")
