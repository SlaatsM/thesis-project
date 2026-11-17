"""
Prolog Converter - Converts constraints to Prolog format with finite domain constraints.
"""

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


class PrologConverter:
    def __init__(self, variables: list[str], var_domains: dict[str, Domain]):
        """
        Initialize with the list of variables and their domains.

        Args:
            variables: List of variable names (paths) used in constraints
            var_domains: Mapping from variable name to its Domain object
        """
        self.variables = variables
        self.var_domains = var_domains

        # Create sanitized variable names
        self._var_renaming = {}
        self._reverse_renaming = {}
        self._sanitize_variables()

    def _sanitize_variables(self):
        """
        Sanitize variable names for Prolog compatibility.

        Prolog identifiers must:
        - Start with an UPPERCASE letter
        - Contain only letters, digits and underscores

        Dots and brackets will be replaced with underscores
        """
        for var in self.variables:
            sanitized = var

            # Replace dots with underscores
            sanitized = sanitized.replace(".", "_")

            # Replace brackets and their contents with underscores e.g., a1[0] -> a1_0
            sanitized = re.sub(r"\[(\d+)\]", r"_\1", sanitized)

            # Make first character uppercase for Prolog variable
            if sanitized and sanitized[0].islower():
                sanitized = sanitized[0].upper() + sanitized[1:]
            elif sanitized and not sanitized[0].isalpha():
                sanitized = f"V_{sanitized}"

            self._var_renaming[var] = sanitized
            self._reverse_renaming[sanitized] = var

    def _get_sanitized_name(self, var_name: str) -> str:
        return self._var_renaming.get(var_name, var_name)

    # Convert domain to valid fd_domain constraints in Prolog; we assume the domain is in ascending order.
    def _domain_to_prolog(self, var: str, domain: Domain) -> (list[str], int):
        sanitized_var = self._get_sanitized_name(var)
        constraints = []
        max_value = 0

        if len(domain.parts) == 1:
            # Single part - use the range approach
            part = domain.parts[0]
            if isinstance(part, tuple):
                lo, hi = part
                constraints.append(f"fd_domain({sanitized_var}, {lo}, {hi})")
            else:
                constraints.append(f"fd_domain({sanitized_var}, {part}, {part})")
        else:
            # Multiple parts - build a list of all individual values
            values = []

            for part in domain.parts:
                if isinstance(part, tuple):
                    # Expand range into individual values
                    lo, hi = part
                    values.extend(range(lo, hi + 1))
                else:
                    # Single value
                    values.append(part)

            # Get the max value from the last part
            last_part = domain.parts[-1]
            if isinstance(last_part, tuple):
                max_value = last_part[1]  # hi value of the last tuple
            else:
                max_value = last_part  # single value

            # Convert to Prolog list syntax
            values_str = ", ".join(str(v) for v in values)

            constraints.append(f"fd_domain({sanitized_var}, [{values_str}])")

        return constraints, max_value

    def _term_to_prolog(self, term: Term) -> str:
        if isinstance(term, Const):
            return str(term.c)
        elif isinstance(term, VarTerm):
            return self._get_sanitized_name(term.v)
        elif isinstance(term, Add):
            return f"({self._term_to_prolog(term.left)} + {self._term_to_prolog(term.right)})"
        elif isinstance(term, Sub):
            return f"({self._term_to_prolog(term.left)} - {self._term_to_prolog(term.right)})"
        elif isinstance(term, MulConst):
            return f"({term.c} * {self._get_sanitized_name(term.v)})"
        else:
            raise TypeError(f"Unknown term type: {type(term)}")

    def _predicate_to_prolog(self, pred: Predicate) -> str:
        left = self._term_to_prolog(pred.left)
        right = self._term_to_prolog(pred.right)

        # Map SMT2 operators to Prolog FD operators
        op_map = {
            "=": "#=",
            "<": "#<",
            ">": "#>",
            "<=": "#=<",
            ">=": "#>=",
            "!=": r"#\=",
        }

        prolog_op = op_map.get(pred.op, pred.op)
        return f"{left} {prolog_op} {right}"

    def _phi_to_prolog(self, phi: Phi) -> str:
        if isinstance(phi, Atom):
            return self._predicate_to_prolog(phi.pred)
        elif isinstance(phi, Not):
            return rf"#\ ({self._phi_to_prolog(phi.inner)})"
        elif isinstance(phi, And):
            return rf"({self._phi_to_prolog(phi.left)} #/\ {self._phi_to_prolog(phi.right)})"
        elif isinstance(phi, Or):
            return rf"({self._phi_to_prolog(phi.left)} #\/ {self._phi_to_prolog(phi.right)})"
        elif isinstance(phi, Implies):
            return f"({self._phi_to_prolog(phi.left)} #==> {self._phi_to_prolog(phi.right)})"
        else:
            raise TypeError(f"Unknown phi type: {type(phi)}")

    def convert(self, formulas: list[Phi]) -> str:
        """
        Convert formulas and domains to Prolog format.
        """
        lines = []

        # Get all sanitized variable names
        var_names = sorted(self._var_renaming.values())

        # Create solve/1 predicate header
        var_list = [f"{var[0].lower()}{var[1:]}-{var}" for var in var_names]
        lines.append(f"solve([{', '.join(var_list)}]) :-")
        lines.append("")

        # Track max value for fd_set_vector_max
        max_domain_value = 0

        # First pass: collect all domain constraints and find max value
        domain_lines = []
        for var in sorted(self.variables):
            if var in self.var_domains:
                constraints, max_val = self._domain_to_prolog(
                    var, self.var_domains[var]
                )
                domain_lines.extend(constraints)
                max_domain_value = max(max_domain_value, max_val)

        # Domain constraints
        lines.append("    %% Domain constraints")
        if (
            max_domain_value > 127
        ):  # Only set fd_set_vector_max if max_domain_value exceeds the default limit (of 127)
            lines.append(f"    fd_set_vector_max({max_domain_value}),")
            lines.append("")

        for constraint in domain_lines:
            lines.append(f"    {constraint},")

        lines.append("")

        # Formula constraints
        lines.append("    %% Formula constraints")
        if len(formulas) == 1:
            prolog_formula = self._phi_to_prolog(formulas[0])
            lines.append(f"    {prolog_formula},")
        elif len(formulas) > 1:
            # Combine multiple formulas with AND
            combined = ", ".join(self._phi_to_prolog(f) for f in formulas)
            lines.append(f"    {combined},")
        else:
            raise ValueError("Expected at least one formula")

        lines.append("")

        # Labeling
        lines.append("    %% Labeling")
        lines.append(
            f"    fd_labeling([{', '.join(var_names)}], [value_method(random)])."
        )

        return "\n".join(lines)
