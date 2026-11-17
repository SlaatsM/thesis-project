import re

from generate_constraints import (
    Add,
    And,
    Atom,
    Const,
    Implies,
    MulConst,
    Not,
    Or,
    Phi,
    Predicate,
    Sub,
    Term,
    VarTerm,
)
from generate_structures import Domain


class SMT2Converter:
    def __init__(self, variables: list[str], var_domains: dict[str, Domain]):
        """
        Initialize with the list of variables and their domains.

        Args:
            variables: List of variable names (paths) used in constraints
            var_domains: Mapping from variable name to its Domain object
        """
        self.variables = variables
        self.var_domains = var_domains
        self.sort_name = "Int"  # All variables are integers

        # Create sanitized variable names
        self._var_renaming = {}
        self._reverse_renaming = {}
        self._sanitize_variables()

    def _sanitize_variables(self):
        """
        Sanitize variable names for SMT2 compatibility.
        SMT2 identifiers must:
        - Start with a letter
        - Contain only letters, digits and underscores

        Dots and brackets will be replaced with underscores
        """
        for var in self.variables:
            sanitized = var

            # Replace dots with underscores
            sanitized = sanitized.replace(".", "_")

            # Replace brackets and their contents with underscores e.g., a1[0] -> a1_0
            sanitized = re.sub(r"\[(\d+)\]", r"_\1", sanitized)

            # Ensure it starts with a letter
            if sanitized and not sanitized[0].isalpha():
                sanitized = f"v_{sanitized}"

            self._var_renaming[var] = sanitized
            self._reverse_renaming[sanitized] = var

    def _get_sanitized_name(self, var_name: str) -> str:
        return self._var_renaming.get(var_name, var_name)

    def _domain_to_smt2(self, var: str, domain: Domain) -> str:
        sanitized_var = self._get_sanitized_name(var)
        constraints = []

        for part in domain.parts:
            if isinstance(part, tuple):
                # Range constraint
                lo, hi = part
                constraints.append(
                    f"(and (<= {lo} {sanitized_var}) (<= {sanitized_var} {hi}))"
                )
            else:
                # Single value constraint
                constraints.append(f"(= {sanitized_var} {part})")

        if len(constraints) == 1:
            return constraints[0]
        elif len(constraints) > 1:
            return f"(or {' '.join(constraints)})"
        else:
            return "true"

    def _term_to_smt2(self, term: Term) -> str:
        if isinstance(term, Const):
            return str(term.c)
        elif isinstance(term, VarTerm):
            # Use sanitized variable name
            return self._get_sanitized_name(term.v)
        elif isinstance(term, Add):
            return (
                f"(+ {self._term_to_smt2(term.left)} {self._term_to_smt2(term.right)})"
            )
        elif isinstance(term, Sub):
            return (
                f"(- {self._term_to_smt2(term.left)} {self._term_to_smt2(term.right)})"
            )
        elif isinstance(term, MulConst):
            return f"(* {term.c} {self._get_sanitized_name(term.v)})"
        else:
            raise TypeError(f"Unknown term type: {type(term)}")

    def _predicate_to_smt2(self, pred: Predicate) -> str:
        left = self._term_to_smt2(pred.left)
        right = self._term_to_smt2(pred.right)

        if pred.op == "!=":
            return f"(not (= {left} {right}))"
        else:
            return f"({pred.op} {left} {right})"

    def _phi_to_smt2(self, phi: Phi) -> str:
        if isinstance(phi, Atom):
            return self._predicate_to_smt2(phi.pred)
        elif isinstance(phi, Not):
            return f"(not {self._phi_to_smt2(phi.inner)})"
        elif isinstance(phi, And):
            return f"(and {self._phi_to_smt2(phi.left)} {self._phi_to_smt2(phi.right)})"
        elif isinstance(phi, Or):
            return f"(or {self._phi_to_smt2(phi.left)} {self._phi_to_smt2(phi.right)})"
        elif isinstance(phi, Implies):
            return f"(=> {self._phi_to_smt2(phi.left)} {self._phi_to_smt2(phi.right)})"
        else:
            raise TypeError(f"Unknown phi type: {type(phi)}")

    # Convert domains and formulas to SMT2 format.
    def convert(self, formulas: list[Phi]) -> str:
        lines = []

        # Set logic
        lines.append("(set-logic QF_LIA)")  # Quantifier-free Linear Integer Arithmetic
        lines.append("(set-option :produce-models true)")

        # Comments showing original variable names
        lines.append("")
        lines.append("; Variable name mapping (original -> sanitized)")
        for orig, sanitized in sorted(self._var_renaming.items()):
            if orig != sanitized:
                lines.append(f";   {orig} -> {sanitized}")
            else:
                lines.append(f";   {orig}")

        # Variable declarations with sanitized names
        lines.append("")
        lines.append("; Variable declarations")
        for var in sorted(self.variables):
            sanitized = self._var_renaming[var]
            lines.append(f"(declare-fun {sanitized} () {self.sort_name})")

        # Domain constraints
        lines.append("")
        lines.append("; Domain constraints")
        for var in sorted(self.variables):
            if var in self.var_domains:
                domain_constraint = self._domain_to_smt2(var, self.var_domains[var])
                if domain_constraint != "true":
                    lines.append(f"(assert {domain_constraint})")

        # Formula constraints
        lines.append("")
        lines.append("; Formula constraint")

        if len(formulas) == 1:
            smt2_formula = self._phi_to_smt2(formulas[0])
            lines.append(f"(assert {smt2_formula})")
        elif len(formulas) > 1:
            combined = f"(and {' '.join(self._phi_to_smt2(f) for f in formulas)})"
            lines.append(f"(assert {combined})")
        else:
            raise ValueError("Expected at least one formula")

        # Check satisfiability
        lines.append("")
        lines.append("(check-sat)")
        lines.append("(get-model)")

        return "\n".join(lines)
