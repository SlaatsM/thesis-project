import os
import random
import re
import subprocess
from pathlib import Path

from conversion_for_csb import convert


class CSBSampler:
    """
    SMT sampler using the external csb implementation.

    The sampler:
        1. Converts the input file to QF_BV SMT2 format
        2. Saves the converted file to the csb/ subdirectory of the same subset
        3. Runs the csb executable on the converted SMT2 benchmark
        4. Lets csb generate satisfying models
        5. Parses the models directly from stdout
        6. Converts the samples into JSON-friendly dictionaries
    """

    name = "csb"
    format = "simple"

    def __init__(self, executable):
        self.executable = executable

    def sample(self, input_file, number):
        csb_dir = str(Path(input_file).parent.parent / "csb")
        os.makedirs(csb_dir, exist_ok=True)

        # Convert input file to QF_BV and save to csb/ directory
        output_file = convert(input_file, csb_dir)

        # Generate a random seed between 1 and 2^31-1
        seed = random.randint(1, 2147483647)

        # Run external csb executable
        env = os.environ.copy()

        result = subprocess.run(
            [
                self.executable,
                "-s",
                "-n",
                str(number),
                "--seed",
                str(seed),
                str(output_file),
            ],
            check=False,
            capture_output=True,
            text=True,
            env=env,
        )

        if result.returncode != 0:
            raise RuntimeError({result.stderr})

        # Parse the output directly from stdout
        models = parse_csb_output(result.stdout)

        return models


def _bits_to_signed_int(bits: str) -> int:
    v = int(bits, 2)
    if bits[0] == "1":
        v -= 1 << len(bits)
    return v


def bv_value_to_signed_int(value_str: str, width: int) -> int:
    """
    Convert a bitvector literal, in any of the standard SMT-LIB model
    output forms, into a signed python int (two's complement).

    Supports:
        #xHEX               e.g. "#x5D"
        #bBINARY            e.g. "#b001011011"
        (_ bvDECIMAL WIDTH) e.g. "(_ bv185 9)"
    """
    s = value_str.strip()

    m = re.match(r"\(_\s*bv(\d+)\s+(\d+)\)", s)
    if m:
        raw, w = int(m.group(1)), int(m.group(2))
        bits = format(raw, f"0{w}b")
        return _bits_to_signed_int(bits)

    if s.startswith("#x"):
        hexpart = s[2:]
        bits = bin(int(hexpart, 16))[2:].zfill(width)
        return _bits_to_signed_int(bits)

    if s.startswith("#b"):
        return _bits_to_signed_int(s[2:])

    raise ValueError(f"Unrecognized bitvector literal: {value_str!r}")


# Matches a single "define-fun" line inside a (model ...) block.
#   - the variable name is pipe-quoted (e.g., |x|)
#   - the value may be #xHEX, #bBINARY, or (_ bvDECIMAL WIDTH)
_DEFINE_FUN_RE = re.compile(
    r"\(\s*define-fun\s+\|(?P<name>[^\s|()]+)\|\s*\(\)\s*"
    r"\(_\s*BitVec\s+(?P<width>\d+)\)\s*"
    r"(?P<value>#x[0-9A-Fa-f]+|#b[01]+|\(_\s*bv\d+\s+\d+\))\s*\)"
)


def parse_csb_output(text: str) -> list[dict[str, int]]:
    """
    Parse csb output and extract variable assignments as SIGNED integers.

    csb prints one or more blocks like:

        sat
        (model
        ( define-fun |x| () (_ BitVec 9) #b000001111 )
        ( define-fun |y| () (_ BitVec 9) #b000101101 )
        )

    interleaved with "c ..." diagnostic lines outside the blocks.

    This function collects one dict per (model ...) block.
    """
    results = []
    lines = text.split("\n")

    i = 0
    while i < len(lines):
        line = lines[i].strip()

        # Look for the start of a model block
        if line.startswith("(model"):
            i += 1
            assignment = {}

            # Read lines until we hit the closing parenthesis
            while i < len(lines):
                current_line = lines[i].strip()

                if current_line == ")":
                    break

                var_match = _DEFINE_FUN_RE.match(current_line)
                if var_match:
                    width = int(var_match.group("width"))
                    assignment[var_match.group("name")] = bv_value_to_signed_int(
                        var_match.group("value"), width
                    )

                i += 1

            # Only add if we found at least one variable
            if assignment:
                results.append(assignment)

        i += 1

    return results
