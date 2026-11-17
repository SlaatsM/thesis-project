"""
Random generator for the constraint grammar:

    phi ::= P | not phi | phi and phi | phi or phi | phi => phi
    P   ::= t = t | t != t | t < t | t > t | t <= t | t >= t
    t   ::= c | v | t + t | t - t | c * v

where c is an integer constant and v is a variable drawn from the set V of
integer-valued access paths produced by `extract_int_variables` in
generate_structures.py.
"""

import random
from dataclasses import dataclass

from generate_structures import (
    StructureConfig,
    StructureGenerator,
    extract_int_variables,
)


# Node types
class Term:
    """Base class for t ::= c | v | t + t | t - t | c * v"""


@dataclass
class Const(Term):
    c: int

    def __str__(self) -> str:
        return str(self.c)


@dataclass
class VarTerm(Term):
    v: str  # a variable path, e.g. "h8.h15.i16"

    def __str__(self) -> str:
        return self.v


@dataclass
class Add(Term):
    left: Term
    right: Term

    def __str__(self) -> str:
        return f"({self.left} + {self.right})"


@dataclass
class Sub(Term):
    left: Term
    right: Term

    def __str__(self) -> str:
        return f"({self.left} - {self.right})"


@dataclass
class MulConst(Term):
    c: int
    v: str

    def __str__(self) -> str:
        return f"{self.c}\u00b7{self.v}"


@dataclass
class Predicate:
    """Base class for P ::= t = t | t != t | t < t | t > t | t <= t | t >= t"""

    op: str
    left: Term
    right: Term

    def __str__(self) -> str:
        return f"{self.left} {self.op} {self.right}"


class Phi:
    """Base class for phi ::= P | not phi | phi and phi | phi or phi | phi => phi"""


@dataclass
class Atom(Phi):
    pred: Predicate

    def __str__(self) -> str:
        return str(self.pred)


@dataclass
class Not(Phi):
    inner: Phi

    def __str__(self) -> str:
        return f"\u00ac({self.inner})"


@dataclass
class And(Phi):
    left: Phi
    right: Phi

    def __str__(self) -> str:
        return f"({self.left} \u2227 {self.right})"


@dataclass
class Or(Phi):
    left: Phi
    right: Phi

    def __str__(self) -> str:
        return f"({self.left} \u2228 {self.right})"


@dataclass
class Implies(Phi):
    left: Phi
    right: Phi

    def __str__(self) -> str:
        return f"({self.left} \u21d2 {self.right})"


# Configuration
@dataclass
class ConstraintConfig:
    num_formulas: int = 1  # how many top-level phi's to generate

    max_formula_depth: int = 3  # caps nesting of not/and/or/=>
    max_term_depth: int = 2  # caps nesting of t+t / t-t

    # phi
    weight_atom: float = 0.3
    weight_not: float = 0.1
    weight_and: float = 0.3
    weight_or: float = 0.1
    weight_implies: float = 0.2

    # P
    weight_eq: float = 0.1
    weight_neq: float = 0.1
    weight_lt: float = 0.2
    weight_gt: float = 0.2
    weight_le: float = 0.2
    weight_ge: float = 0.2

    # t
    weight_term_const: float = 0.3
    weight_term_var: float = 0.35
    weight_term_add: float = 0.1
    weight_term_sub: float = 0.1
    weight_term_mulconst: float = 0.15

    const_value_range: tuple[int, int] = (-100, 100)  # range constants c are drawn from


# Generator
class ConstraintGenerator:
    def __init__(self, config: ConstraintConfig, variables: list[str]):
        """
        variables: the pool V of variable paths to draw `v` from.
        """
        self.config = config
        self.variables = list(variables)

    # terms
    def _random_const(self) -> int:
        return random.randint(*self.config.const_value_range)

    def _term_kind(self, depth: int) -> str:
        cfg = self.config
        pop: list[str] = ["const"]
        weights: list[float] = [cfg.weight_term_const]

        if self.variables:
            pop += ["var", "mulconst"]
            weights += [cfg.weight_term_var, cfg.weight_term_mulconst]

        if depth < cfg.max_term_depth:
            pop += ["add", "sub"]
            weights += [cfg.weight_term_add, cfg.weight_term_sub]

        return random.choices(population=pop, weights=weights, k=1)[0]

    def gen_term(self, depth: int = 0) -> Term:
        kind = self._term_kind(depth)

        if kind == "const":
            return Const(self._random_const())
        if kind == "var":
            return VarTerm(random.choice(self.variables))
        if kind == "mulconst":
            return MulConst(self._random_const(), random.choice(self.variables))
        if kind == "add":
            return Add(self.gen_term(depth + 1), self.gen_term(depth + 1))
        # kind == "sub"
        return Sub(self.gen_term(depth + 1), self.gen_term(depth + 1))

    # predicates
    def gen_predicate(self) -> Predicate:
        cfg = self.config
        op = random.choices(
            population=["=", "!=", "<", ">", "<=", ">="],
            weights=[
                cfg.weight_eq,
                cfg.weight_neq,
                cfg.weight_lt,
                cfg.weight_gt,
                cfg.weight_le,
                cfg.weight_ge,
            ],
            k=1,
        )[0]
        return Predicate(op, self.gen_term(), self.gen_term())

    # formulas
    def gen_formula(self, depth: int = 0) -> Phi:
        cfg = self.config
        if depth >= cfg.max_formula_depth:
            return Atom(self.gen_predicate())

        kind = random.choices(
            population=["atom", "not", "and", "or", "implies"],
            weights=[
                cfg.weight_atom,
                cfg.weight_not,
                cfg.weight_and,
                cfg.weight_or,
                cfg.weight_implies,
            ],
            k=1,
        )[0]

        if kind == "atom":
            return Atom(self.gen_predicate())
        if kind == "not":
            return Not(self.gen_formula(depth + 1))
        if kind == "and":
            return And(self.gen_formula(depth + 1), self.gen_formula(depth + 1))
        if kind == "or":
            return Or(self.gen_formula(depth + 1), self.gen_formula(depth + 1))
        # kind == "implies"
        return Implies(self.gen_formula(depth + 1), self.gen_formula(depth + 1))

    def gen_formulas(self) -> list[Phi]:
        return [self.gen_formula() for _ in range(self.config.num_formulas)]


if __name__ == "__main__":
    struct_gen = StructureGenerator(StructureConfig())
    roots = struct_gen.gen_roots()
    variables = [var.path for var in extract_int_variables(roots)]

    print("Variable(s) available to the constraint language:")
    for path in variables:
        print(f"  {path}")

    constraint_gen = ConstraintGenerator(ConstraintConfig(), variables)

    print("\nGenerated constraint(s):")
    for i, phi in enumerate(constraint_gen.gen_formulas(), start=1):
        print(f"  phi{i} = {phi}")
