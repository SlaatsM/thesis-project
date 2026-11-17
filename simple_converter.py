from generate_constraints import Phi
from generate_structures import Domain
from smt2_converter import SMT2Converter


class SimpleConverter(SMT2Converter):
    def __init__(self, variables: list[str], var_domains: dict[str, Domain]):
        """
        Initialize with the list of variables and their domains.

        Args:
            variables: List of variable names (paths) used in constraints
            var_domains: Mapping from variable name to its Domain object
        """

        super().__init__(variables, var_domains)

    def _domain_to_string(self, var: str, domain: Domain) -> str:
        pieces = []
        for part in domain.parts:
            if isinstance(part, tuple):
                pieces.append(f"{part[0]}..{part[1]}")
            else:
                pieces.append(str(part))
        return ",".join(pieces)

    def convert(self, formulas: list[Phi]) -> str:
        lines = []

        # Variables and their domains (using sanitized names)
        lines.append("Variables and their domains:")
        for var in sorted(self.variables):
            sanitized = self._get_sanitized_name(var)
            if var in self.var_domains:
                domain_str = self._domain_to_string(var, self.var_domains[var])
                lines.append(f"{sanitized} : {domain_str}")
            else:
                lines.append(f"{sanitized}")

        # Formula constraint
        lines.append("")
        lines.append("Formula constraint:")

        if len(formulas) == 1:
            # Use the inherited formula conversion
            smt2_formula = self._phi_to_smt2(formulas[0])
            lines.append(f"(assert {smt2_formula})")
        elif len(formulas) > 1:
            combined = f"(and {' '.join(self._phi_to_smt2(f) for f in formulas)})"
            lines.append(f"(assert {combined})")
        else:
            raise ValueError("Expected at least one formula")

        return "\n".join(lines)
