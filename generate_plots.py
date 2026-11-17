import itertools
import json
import re
from collections import defaultdict
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from matplotlib.lines import Line2D
from z3 import Int, Solver, sat, unknown

from util import parse_simple_file

RESULTS_DIR = Path("results")

TIMEOUT = 60.0  # seconds - soft timeout applied to iteratively_halve
N_VALUATIONS = 50
R_RUNS = 20
NUM_INSTANCES = 50  # constraint_0001..0050 per (category, subset)

CONSTRAINT_DIR_RE = re.compile(r"constraint_(\d+)")

SAMPLER_COLORS = {
    "blocking": "#4C72B0",
    "bound_rejection": "#DD8452",
    "iteratively_halve": "#55A868",
    "csb": "#C44E52",
    "megasampler": "#8172B2",
    "gprolog": "#937860",
}
SAMPLER_NAMES = {
    "blocking": "Blocking Sampler",
    "bound_rejection": "Boundary-Based Rejection Sampler",
    "iteratively_halve": "iteratively_halve",
    "csb": "CSB",
    "megasampler": "MeGASampler",
    "gprolog": "GProlog",
}


# Keep sampler order consistent with SAMPLER_COLORS across every figure
def sampler_order(samplers) -> list:
    return [s for s in SAMPLER_COLORS if s in samplers]


def color_for(sampler: str):
    return SAMPLER_COLORS[sampler]


def get_formatted_sampler_name(sampler: str) -> str:
    name = SAMPLER_NAMES.get(sampler, sampler)
    if sampler == "iteratively_halve":
        # Return with italics
        return r"$\mathit{iteratively\_halve}$"
    elif sampler == "bound_rejection":
        # Split into two lines for readability
        return "Boundary-Based\nRejection Sampler"
    return name


# Smallest sensible positive lower bound for a log axis
def positive_floor(values, fallback=1e-3):
    values = np.asarray(values, dtype=float)
    positive = values[values > 0]
    if positive.size == 0:
        return fallback
    return max(positive.min() / 2, fallback)


### RUNTIME PIPELINE

RUNTIME_CATEGORIES = ["pos", "mix"]
RUNTIME_SUBSETS = ["single", "small", "big"]


# Walk the results directory and build a DataFrame, one row per run
def load_runtime_results(results_dir: Path) -> pd.DataFrame:
    records = []

    for category in RUNTIME_CATEGORIES:
        category_dir = results_dir / category
        if not category_dir.is_dir():
            continue

        for subset in RUNTIME_SUBSETS:
            subset_dir = category_dir / subset
            if not subset_dir.is_dir():
                continue

            for sampler_dir in sorted(subset_dir.iterdir()):
                if not sampler_dir.is_dir():
                    continue
                sampler_name = sampler_dir.name

                for constraint_dir in sorted(sampler_dir.iterdir()):
                    if not constraint_dir.is_dir():
                        continue
                    match = CONSTRAINT_DIR_RE.match(constraint_dir.name)
                    if not match:
                        continue
                    constraint_num = int(match.group(1))

                    for result_file in sorted(constraint_dir.glob("result_*.json")):
                        with open(result_file) as f:
                            data = json.load(f)

                        records.append(
                            {
                                "category": category,
                                "subset": subset,
                                "subset_path": f"{category}/{subset}",
                                "sampler": sampler_name,
                                "constraint_num": constraint_num,
                                "run_id": data.get("run_id"),
                                "runtime_seconds": data.get("runtime_seconds"),
                                "number_models": data.get("number_models"),
                            }
                        )

    if not records:
        raise SystemExit(f"No result files found under '{results_dir}'. ")

    df = pd.DataFrame.from_records(records)
    df["timed_out"] = df["runtime_seconds"] >= TIMEOUT
    df["runtime_clipped"] = df["runtime_seconds"].clip(upper=TIMEOUT)
    return df


# Aggregate runtime runs per instance (category, subset, sampler, constraint_num)
def aggregate_runtime_runs(df: pd.DataFrame) -> pd.DataFrame:
    agg = (
        df.groupby(["category", "subset", "sampler", "constraint_num"])
        .agg(
            mean_runtime=("runtime_clipped", "mean"),
            std_runtime=("runtime_clipped", "std"),
            n_runs=("runtime_clipped", "size"),
            timeout_rate=("timed_out", "mean"),
        )
        .reset_index()
    )
    agg["std_runtime"] = agg["std_runtime"].fillna(0.0)
    return agg


# Per-subset boxplot, one box per sampler (each box = the 50 per-instance mean runtimes for that sampler)
def plot_subset_boxplot(
    agg: pd.DataFrame,
    category: str,
    subset: str,
    output_dir: Path,
    ylim: tuple | None = None,
):
    sub = agg[(agg.category == category) & (agg.subset == subset)]
    if sub.empty:
        return

    samplers = sampler_order(sub["sampler"].unique())
    data = [sub[sub.sampler == s]["mean_runtime"].values for s in samplers]

    display_names = [get_formatted_sampler_name(s) for s in samplers]

    timeout_rates = [
        100 * (sub[sub.sampler == s]["timeout_rate"] > 0).mean() for s in samplers
    ]

    fig, ax = plt.subplots(figsize=(max(6, 1.4 * len(samplers)), 5))

    bp = ax.boxplot(
        data,
        tick_labels=display_names,
        patch_artist=True,
        showfliers=True,
        widths=0.6,
    )
    for i, box in enumerate(bp["boxes"]):
        box.set_facecolor(color_for(samplers[i]))
        box.set_alpha(0.7)

    for i, rate in enumerate(timeout_rates):
        if rate > 0:
            ax.text(
                i + 1,
                TIMEOUT * 1.08,
                f"{rate:.0f}% of instances\nhit the timeout",
                ha="center",
                va="bottom",
                fontsize=7,
                color="firebrick",
            )

    ax.axhline(
        TIMEOUT,
        color="gray",
        linestyle="--",
        linewidth=1,
        label=f"Timeout ({TIMEOUT:.0f}s)",
    )
    ax.set_yscale("log")
    ax.set_ylabel("Mean runtime per benchmark instance (s, log scale)")
    ax.set_xlabel("Sampler")
    ax.set_title(f"Runtime distribution across instances — {category}/{subset}", y=1.04)
    ax.legend(loc="upper left", fontsize=8)
    if ylim is None:
        ylim = (positive_floor(np.concatenate(data)), TIMEOUT * 1.5)
    ax.set_ylim(*ylim)
    ax.grid(True, which="both", axis="y", alpha=0.3)
    fig.tight_layout()

    out_path = output_dir / f"boxplot_{category}_{subset}.pdf"
    fig.savefig(out_path)
    fig.savefig(out_path.with_suffix(".png"), dpi=200)
    plt.close(fig)
    print(f"Saved {out_path}")


# Per-subset line plot, mean runtime vs. benchmark instance (one line per sampler; band = +/- 1 std across that instance's 20 runs)
def plot_instance_runtime(
    agg: pd.DataFrame,
    category: str,
    subset: str,
    output_dir: Path,
    ylim: tuple | None = None,
):
    sub = agg[(agg.category == category) & (agg.subset == subset)]
    if sub.empty:
        return

    samplers = sampler_order(sub["sampler"].unique())

    fig, ax = plt.subplots(figsize=(8, 5))

    for i, sampler in enumerate(samplers):
        s = sub[sub.sampler == sampler].sort_values("constraint_num")

        color = color_for(sampler)
        display_name = get_formatted_sampler_name(sampler)
        ax.plot(
            s["constraint_num"],
            s["mean_runtime"],
            label=display_name,
            color=color,
            marker="o",
            markersize=3,
            linewidth=1.5,
        )
        floor = positive_floor(s["mean_runtime"].values)
        lower = (s["mean_runtime"] - s["std_runtime"]).clip(lower=floor)
        upper = (s["mean_runtime"] + s["std_runtime"]).clip(upper=TIMEOUT)
        ax.fill_between(s["constraint_num"], lower, upper, color=color, alpha=0.15)

    ax.axhline(
        TIMEOUT,
        color="gray",
        linestyle="--",
        linewidth=1,
        label=f"Timeout ({TIMEOUT:.0f}s)",
    )
    ax.set_yscale("log")
    ax.set_xlabel("Benchmark instance")
    ax.set_ylabel("Mean runtime (s, log scale), \u00b1 1 std over 20 runs")
    ax.set_xlim(1, 50)
    if ylim is None:
        ylim = (positive_floor(sub["mean_runtime"].values), TIMEOUT * 1.3)
    ax.set_ylim(*ylim)
    ax.set_title(f"Runtime vs. benchmark instance — {category}/{subset}")
    ax.legend(loc="upper left", fontsize=8, ncol=2)
    ax.grid(True, which="both", axis="y", alpha=0.3)
    fig.tight_layout()

    out_path = output_dir / f"instance_runtime_{category}_{subset}.pdf"
    fig.savefig(out_path)
    fig.savefig(out_path.with_suffix(".png"), dpi=200)
    plt.close(fig)
    print(f"Saved {out_path}")


# Build a summary table (CSV) for runtime results, reporting per-sampler statistics across benchmark instances.
def build_runtime_summary_table(df: pd.DataFrame, agg: pd.DataFrame) -> pd.DataFrame:
    per_group = (
        agg.groupby(["category", "subset", "sampler"])
        .agg(
            n_instances=("constraint_num", "nunique"),
            mean_runtime=("mean_runtime", "mean"),
            std_between_instances=("mean_runtime", "std"),
            mean_std_within_instance=("std_runtime", "mean"),
        )
        .reset_index()
    )

    timeout_rate = (
        df.groupby(["category", "subset", "sampler"])["timed_out"]
        .mean()
        .mul(100)
        .rename("timeout_rate_pct")
        .reset_index()
    )

    mean_models = (
        df.groupby(["category", "subset", "sampler"])["number_models"]
        .mean()
        .rename("mean_models")
        .reset_index()
    )

    summary = per_group.merge(timeout_rate, on=["category", "subset", "sampler"]).merge(
        mean_models, on=["category", "subset", "sampler"]
    )

    return summary.round(2)


def run_runtime_pipeline():
    results_dir = RESULTS_DIR
    output_dir = Path("plots/runtime")
    output_dir.mkdir(parents=True, exist_ok=True)

    df = load_runtime_results(results_dir)
    print(f"Loaded {len(df)} individual run results.")

    agg = aggregate_runtime_runs(df)
    print(f"Aggregated to {len(agg)} sampler-instance mean/std pairs.")

    # Per-run raw data (everything needed to reproduce any plot)
    raw_cols = [
        "category",
        "subset",
        "sampler",
        "constraint_num",
        "run_id",
        "runtime_seconds",
        "runtime_clipped",
        "timed_out",
        "number_models",
    ]
    per_run_csv = output_dir / "runtime_per_run.csv"
    df[raw_cols].sort_values(
        ["category", "subset", "sampler", "constraint_num", "run_id"]
    ).to_csv(per_run_csv, index=False)
    print(f"Saved {per_run_csv}  ({len(df)} rows)")

    # Per-instance aggregated data (the boxplot / line-plot inputs)
    per_instance_csv = output_dir / "runtime_per_instance.csv"
    agg.sort_values(["category", "subset", "sampler", "constraint_num"]).to_csv(
        per_instance_csv, index=False
    )
    print(f"Saved {per_instance_csv}  ({len(agg)} rows)")

    # Fixed y-limits for all runtime plots: 10^-3 up to just above the timeout
    RUNTIME_YLIM = (1e-3, TIMEOUT * 1.5)

    for subset in RUNTIME_SUBSETS:
        for category in RUNTIME_CATEGORIES:
            plot_subset_boxplot(agg, category, subset, output_dir, ylim=RUNTIME_YLIM)
            plot_instance_runtime(agg, category, subset, output_dir, ylim=RUNTIME_YLIM)

    summary = build_runtime_summary_table(df, agg)
    csv_path = output_dir / "runtime_summary.csv"
    summary.to_csv(csv_path, index=False)
    print(f"Saved {csv_path}")

    print(f"\nDone. Runtime plots and tables written to '{output_dir}'")
    return df, agg


###  DIVERSITY PIPELINE


BENCHMARKS_DIR = Path("benchmarks")
DIVERSITY_OUTPUT_DIR = Path("plots/diversity")

DIVERSITY_CATEGORIES = ["pos", "mix"]
DIVERSITY_SUBSETS = ["small", "big"]  # diversity metrics skip 'single'


def find_simple_file(category: str, subset: str, constraint_num: int) -> Path:
    path = (
        BENCHMARKS_DIR
        / category
        / subset
        / "simple"
        / f"constraint_{constraint_num:04d}.txt"
    )
    return path


# Splits a sorted list of ints into maximal contiguous (start, end) runs
def domain_components(values: list[int]) -> list[tuple[int, int]]:
    values = sorted(set(values))
    components = []
    start = prev = values[0]
    for v in values[1:]:
        if v == prev + 1:
            prev = v
        else:
            components.append((start, prev))
            start = prev = v
    components.append((start, prev))
    return components


## Find feasible domains

FEASIBLE_DOMAIN_DIR = Path("feasible_domains")


def domain_to_smt2(var: str, values: list[int]) -> str:
    parts = []
    for lo, hi in domain_components(values):
        if lo == hi:
            parts.append(f"(= {var} {lo})")
        else:
            parts.append(f"(and (<= {lo} {var}) (<= {var} {hi}))")
    if len(parts) == 1:
        return parts[0]
    return f"(or {' '.join(parts)})"


def build_base_smt_script(
    variables: list[str],
    declared_domains: dict[str, list[int]],
    constraint_text: str,
) -> str:
    decls = "\n".join(f"(declare-fun {v} () Int)" for v in variables)
    domain_asserts = "\n".join(
        f"(assert {domain_to_smt2(v, declared_domains[v])})" for v in variables
    )
    if "(assert" not in constraint_text:
        constraint_text = f"(assert {constraint_text})"
    return f"{decls}\n{domain_asserts}\n{constraint_text}\n"


def compute_feasible_domain_uncached(
    variables: list[str], declared_domains: dict[str, list[int]], constraint_text: str
) -> dict[str, list[int]]:
    base_script = build_base_smt_script(variables, declared_domains, constraint_text)

    solver = Solver()
    solver.from_string(base_script)

    feasible: dict[str, list[int]] = {}
    for var in variables:
        z3_var = Int(var)
        feasible_values = []
        for value in declared_domains.get(var, []):
            solver.push()
            solver.add(z3_var == value)
            result = solver.check()
            solver.pop()
            if result == sat:
                feasible_values.append(value)
            elif result == unknown:
                print(
                    f"  [warn] SMT check unknown for {var} = {value}; keeping as feasible"
                )
                feasible_values.append(value)
        feasible[var] = feasible_values

    return feasible


def feasible_domain_cache_path(category: str, subset: str, constraint_num: int) -> Path:
    return (
        FEASIBLE_DOMAIN_DIR
        / f"{category}_{subset}_constraint_{constraint_num:04d}.json"
    )


_DOMAIN_CACHE: dict[tuple, tuple] = {}


def _validate_domains(
    variables: list[str], domains: dict[str, list[int]], context: str
) -> None:
    if not variables:
        raise RuntimeError(f"{context}: no variables declared.")
    for var in variables:
        if not domains.get(var):
            raise RuntimeError(
                f"{context}: feasible domain for variable '{var}' is empty."
            )


def _validate_models(
    models: list[dict], variables: list[str], expected_n: int, context: str
) -> None:
    if len(models) != expected_n:
        raise RuntimeError(
            f"{context}: expected {expected_n} valuations, got {len(models)}."
        )
    expected_vars = set(variables)
    for j, m in enumerate(models):
        if set(m.keys()) != expected_vars:
            missing = sorted(expected_vars - set(m.keys()))
            extra = sorted(set(m.keys()) - expected_vars)
            raise RuntimeError(
                f"{context}: valuation {j} does not assign exactly the "
                f"declared variables (missing={missing}, extra={extra})."
            )


def get_feasible_domains(category: str, subset: str, constraint_num: int):
    key = (category, subset, constraint_num)
    if key in _DOMAIN_CACHE:
        return _DOMAIN_CACHE[key]

    instance_id = f"{category}/{subset}/constraint_{constraint_num:04d}"
    cache_path = feasible_domain_cache_path(category, subset, constraint_num)
    if cache_path.is_file():
        with open(cache_path) as f:
            cached = json.load(f)
        variables, feasible_domains = cached["variables"], cached["domains"]
    else:
        path = find_simple_file(category, subset, constraint_num)

        variables, declared_domains, constraint_text = parse_simple_file(str(path))
        print(f"  Computing feasible domains for {instance_id} ...")
        feasible_domains = compute_feasible_domain_uncached(
            variables, declared_domains, constraint_text
        )

        FEASIBLE_DOMAIN_DIR.mkdir(parents=True, exist_ok=True)
        with open(cache_path, "w") as f:
            json.dump({"variables": variables, "domains": feasible_domains}, f)

    _validate_domains(variables, feasible_domains, instance_id)

    result = (variables, feasible_domains)
    _DOMAIN_CACHE[key] = result
    return result


def load_diversity_results(results_dir: Path) -> pd.DataFrame:
    records = []
    for category in DIVERSITY_CATEGORIES:
        category_dir = results_dir / category
        if not category_dir.is_dir():
            continue
        for subset in DIVERSITY_SUBSETS:
            subset_dir = category_dir / subset
            if not subset_dir.is_dir():
                continue
            for sampler_dir in sorted(subset_dir.iterdir()):
                if not sampler_dir.is_dir():
                    continue
                sampler_name = sampler_dir.name
                for constraint_dir in sorted(sampler_dir.iterdir()):
                    if not constraint_dir.is_dir():
                        continue
                    match = CONSTRAINT_DIR_RE.match(constraint_dir.name)
                    if not match:
                        continue
                    constraint_num = int(match.group(1))
                    for result_file in sorted(constraint_dir.glob("result_*.json")):
                        with open(result_file) as f:
                            data = json.load(f)
                        records.append(
                            {
                                "category": category,
                                "subset": subset,
                                "sampler": sampler_name,
                                "constraint_num": constraint_num,
                                "run_id": data.get("run_id"),
                                "models": data.get("models", []),
                                "runtime_seconds": data.get("runtime_seconds"),
                                "number_models": data.get("number_models"),
                            }
                        )
    if not records:
        raise SystemExit(f"No result files found under '{results_dir}'.")

    df = pd.DataFrame.from_records(records)
    df["timed_out"] = df["runtime_seconds"] >= TIMEOUT
    return df


# Load raw run results for the 'single' subset only, restricted to the sampler-instance groups where at least one run hit the timeout
def load_single_subset_timeout_runs(results_dir: Path) -> pd.DataFrame:
    records = []
    subset = "single"
    for category in DIVERSITY_CATEGORIES:
        subset_dir = results_dir / category / subset
        if not subset_dir.is_dir():
            continue
        for sampler_dir in sorted(subset_dir.iterdir()):
            if not sampler_dir.is_dir():
                continue
            sampler_name = sampler_dir.name
            for constraint_dir in sorted(sampler_dir.iterdir()):
                if not constraint_dir.is_dir():
                    continue
                match = CONSTRAINT_DIR_RE.match(constraint_dir.name)
                if not match:
                    continue
                constraint_num = int(match.group(1))
                for result_file in sorted(constraint_dir.glob("result_*.json")):
                    with open(result_file) as f:
                        data = json.load(f)
                    records.append(
                        {
                            "category": category,
                            "subset": subset,
                            "sampler": sampler_name,
                            "constraint_num": constraint_num,
                            "run_id": data.get("run_id"),
                            "models": data.get("models", []),
                            "runtime_seconds": data.get("runtime_seconds"),
                            "number_models": data.get("number_models"),
                        }
                    )

    columns = [
        "category",
        "subset",
        "sampler",
        "constraint_num",
        "run_id",
        "models",
        "runtime_seconds",
        "number_models",
        "timed_out",
    ]
    if not records:
        return pd.DataFrame(columns=columns)

    df = pd.DataFrame.from_records(records)
    df["timed_out"] = df["runtime_seconds"] >= TIMEOUT

    group_cols = ["category", "subset", "sampler", "constraint_num"]
    instance_hit_timeout = df.groupby(group_cols)["timed_out"].transform("any")
    return df[instance_hit_timeout].copy()


def as_tuple(valuation: dict) -> tuple:
    return tuple(sorted(valuation.items()))


# Within-run diversity: VV_C(T_r), EvenDiv_C(T_r)
def value_variety_evenness_for_run(
    models: list, variables: list, domains: dict, context: str = ""
):
    vv_scores, even_scores = [], []

    for var in variables:
        Di_size = len(domains[var])
        seen = [m[var] for m in models]
        distinct = set(seen)
        vv_count = len(distinct)

        E = 1.0 if Di_size == 1 else Di_size * (1 - (1 - 1.0 / Di_size) ** N_VALUATIONS)
        vv_scores.append(vv_count / E)

        if vv_count == 1:
            H = 1.0
        else:
            counts = defaultdict(int)
            for v in seen:
                counts[v] += 1
            probs = np.array([c / N_VALUATIONS for c in counts.values()])
            H = -np.sum(probs * np.log(probs)) / np.log(vv_count)
        even_scores.append(H)

    vv_scores = np.array(vv_scores, dtype=float)
    even_scores = np.array(even_scores, dtype=float)

    if np.any(vv_scores <= 0) or np.any(even_scores <= 0):
        raise RuntimeError(
            f"{context}: non-positive VV_i/H_i score encountered "
            f"(vv_scores={vv_scores.tolist()}, even_scores={even_scores.tolist()}); "
            "this should be mathematically impossible given non-empty domains "
            "and >=1 valuations, so something upstream is broken."
        )
    vv = float(np.exp(np.mean(np.log(vv_scores))))
    even_div = float(np.exp(np.mean(np.log(even_scores))))
    return vv, even_div


def compute_within_run_metrics(df: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for (category, subset, constraint_num), group in df.groupby(
        ["category", "subset", "constraint_num"]
    ):
        instance_id = f"{category}/{subset}/constraint_{constraint_num:04d}"
        variables, domains = get_feasible_domains(category, subset, constraint_num)

        for _, row in group.iterrows():
            context = f"{instance_id} sampler={row['sampler']} run_id={row['run_id']}"
            _validate_models(row["models"], variables, N_VALUATIONS, context)
            vv, even = value_variety_evenness_for_run(
                row["models"], variables, domains, context
            )
            rows.append(
                {
                    "category": category,
                    "subset": subset,
                    "sampler": row["sampler"],
                    "constraint_num": constraint_num,
                    "run_id": row["run_id"],
                    "vv": vv,
                    "even_div": even,
                }
            )
    return pd.DataFrame(rows)


# One row per (category, subset, sampler, constraint_num): mean/std of vv and even_div across that instance's 20 runs
def aggregate_within_run(within_df: pd.DataFrame) -> pd.DataFrame:
    agg = (
        within_df.groupby(["category", "subset", "sampler", "constraint_num"])
        .agg(
            vv_mean=("vv", "mean"),
            vv_std=("vv", "std"),
            even_div_mean=("even_div", "mean"),
            even_div_std=("even_div", "std"),
        )
        .reset_index()
    )
    agg[["vv_std", "even_div_std"]] = agg[["vv_std", "even_div_std"]].fillna(0.0)
    return agg


# CompCover_i(T_r)
def compcover_for_run(models: list, var: str, components: list) -> float:
    seen = {m[var] for m in models}
    touched = 0
    for lo, hi in components:
        if any(lo <= s <= hi for s in seen):
            touched += 1
    return touched / len(components)


def compute_compcover(df: pd.DataFrame) -> pd.DataFrame:
    rows = []
    for (category, subset, constraint_num), group in df.groupby(
        ["category", "subset", "constraint_num"]
    ):
        instance_id = f"{category}/{subset}/constraint_{constraint_num:04d}"
        variables, domains = get_feasible_domains(category, subset, constraint_num)

        for _, row in group.iterrows():
            context = f"{instance_id} sampler={row['sampler']} run_id={row['run_id']}"
            _validate_models(row["models"], variables, N_VALUATIONS, context)

        for var in variables:
            comps = domain_components(domains[var])
            if len(comps) <= 1:
                continue  # contiguous domain, so discarded
            for _, row in group.iterrows():
                score = compcover_for_run(row["models"], var, comps)
                rows.append(
                    {
                        "category": category,
                        "subset": subset,
                        "sampler": row["sampler"],
                        "constraint_num": constraint_num,
                        "instance_id": instance_id,
                        "variable": var,
                        "run_id": row["run_id"],
                        "comp_cover": score,
                    }
                )
    return pd.DataFrame(rows)


# One row per (sampler, instance_id, variable): mean CompCover_iacross that instance's 20 runs
def aggregate_compcover(compcover_df: pd.DataFrame) -> pd.DataFrame:
    if compcover_df.empty:
        return compcover_df
    return (
        compcover_df.groupby(
            [
                "sampler",
                "category",
                "subset",
                "constraint_num",
                "instance_id",
                "variable",
            ]
        )["comp_cover"]
        .mean()
        .reset_index()
    )


# Cross-run diversity: PosDiv(j)/PosDiv_C, VarPosDiv(j)/VarPosDiv_C, JacDiv_C
def compute_cross_run_metrics(df: pd.DataFrame):
    pos_rows, scalar_rows = [], []

    for (category, subset, sampler, constraint_num), group in df.groupby(
        ["category", "subset", "sampler", "constraint_num"]
    ):
        instance_id = f"{category}/{subset}/constraint_{constraint_num:04d}"
        variables, domains = get_feasible_domains(category, subset, constraint_num)

        runs = group.sort_values("run_id")
        run_models = [r["models"] for _, r in runs.iterrows()]

        if len(run_models) != R_RUNS:
            raise RuntimeError(
                f"{instance_id} sampler={sampler}: expected {R_RUNS} runs for "
                f"a clean (non-timed-out) instance, got {len(run_models)}."
            )
        for run_idx, m in enumerate(run_models):
            context = f"{instance_id} sampler={sampler} run_index={run_idx}"
            _validate_models(m, variables, N_VALUATIONS, context)

        pos_div_over_j = []
        var_pos_div_over_j = []
        for j in range(N_VALUATIONS):
            valuations_j = [as_tuple(m[j]) for m in run_models]
            distinct_j = len(set(valuations_j))
            pos_div_j = distinct_j / R_RUNS
            pos_div_over_j.append(pos_div_j)

            var_scores = []
            for var in variables:
                vals_j = {m[j][var] for m in run_models}
                denom = min(R_RUNS, len(domains[var]))
                var_scores.append(len(vals_j) / denom)
            var_scores = np.array(var_scores, dtype=float)

            if np.any(var_scores <= 0):
                raise RuntimeError(
                    f"{instance_id} sampler={sampler} position={j + 1}: "
                    f"non-positive VarPosDiv_i score encountered "
                    f"(var_scores={var_scores.tolist()}); this should be "
                    "mathematically impossible, so something upstream is broken."
                )
            var_pos_div_j = float(np.exp(np.mean(np.log(var_scores))))
            var_pos_div_over_j.append(var_pos_div_j)

            pos_rows.append(
                {
                    "category": category,
                    "subset": subset,
                    "sampler": sampler,
                    "constraint_num": constraint_num,
                    "position": j + 1,
                    "pos_div": pos_div_j,
                    "var_pos_div": var_pos_div_j,
                }
            )

        pos_div_c = float(np.mean(pos_div_over_j))
        var_pos_div_c = float(np.mean(var_pos_div_over_j))

        run_sets = [{as_tuple(v) for v in m} for m in run_models]
        pair_sims = []
        for a, b in itertools.combinations(range(R_RUNS), 2):
            union = run_sets[a] | run_sets[b]
            inter = run_sets[a] & run_sets[b]
            pair_sims.append(len(inter) / len(union))
        jac_div_c = 1 - (sum(pair_sims) / len(pair_sims))

        scalar_rows.append(
            {
                "category": category,
                "subset": subset,
                "sampler": sampler,
                "constraint_num": constraint_num,
                "pos_div_c": pos_div_c,
                "var_pos_div_c": var_pos_div_c,
                "jac_div_c": jac_div_c,
            }
        )

    return pd.DataFrame(pos_rows), pd.DataFrame(scalar_rows)


## Plotting helpers


def lin_ylim(df, col, subset, cap=None, floor=0.0):
    sub = df[(df.subset == subset) & (df.category.isin(DIVERSITY_CATEGORIES))]
    vals = sub[col].dropna().values
    if vals.size == 0:
        return None
    hi = float(np.nanmax(vals)) * 1.1
    if cap is not None:
        hi = min(hi, cap)
    return (floor, hi)


def plot_boxplot(
    agg: pd.DataFrame,
    value_col: str,
    category: str,
    subset: str,
    ylabel: str,
    title: str,
    out_name: str,
    output_dir: Path,
    ylim: tuple | None = None,
):
    sub = agg[(agg.category == category) & (agg.subset == subset)]
    if sub.empty:
        return

    samplers = sampler_order(sub["sampler"].unique())
    data = [sub[sub.sampler == s][value_col].dropna().values for s in samplers]
    display_names = [get_formatted_sampler_name(s) for s in samplers]

    fig, ax = plt.subplots(figsize=(max(6, 1.4 * len(samplers)), 5))
    bp = ax.boxplot(
        data, tick_labels=display_names, patch_artist=True, showfliers=True, widths=0.6
    )
    for i, box in enumerate(bp["boxes"]):
        box.set_facecolor(color_for(samplers[i]))
        box.set_alpha(0.7)

    ax.set_ylabel(ylabel)
    ax.set_xlabel("Sampler")
    ax.set_title(f"{title} — {category}/{subset}", y=1.02)
    if ylim is not None:
        ax.set_ylim(*ylim)
    ax.grid(True, axis="y", alpha=0.3)
    fig.tight_layout()

    out_path = output_dir / f"{out_name}_{category}_{subset}.pdf"
    fig.savefig(out_path)
    fig.savefig(out_path.with_suffix(".png"), dpi=200)
    plt.close(fig)
    print(f"Saved {out_path}")


def plot_instance_line(
    agg: pd.DataFrame,
    mean_col: str,
    category: str,
    subset: str,
    ylabel: str,
    title: str,
    out_name: str,
    output_dir: Path,
    std_col: str | None = None,
    ylim: tuple | None = None,
    excluded_instances: pd.DataFrame | None = None,
):
    sub = agg[(agg.category == category) & (agg.subset == subset)]
    if sub.empty:
        return

    samplers = sampler_order(sub["sampler"].unique())
    fig, ax = plt.subplots(figsize=(8, 5))

    x_full = np.arange(1, NUM_INSTANCES + 1)
    trans = ax.get_xaxis_transform()  # x in data coords, y in axes-fraction coords

    # For each instance: which samplers are excluded there (used to dodge overlapping X markers)
    excluded_by_instance: dict[int, list[str]] = {}
    if excluded_instances is not None and not excluded_instances.empty:
        exc_all = excluded_instances[
            (excluded_instances.category == category)
            & (excluded_instances.subset == subset)
        ]
        for num, grp in exc_all.groupby("constraint_num"):
            excluded_by_instance[num] = sampler_order(grp["sampler"].unique())
    X_DODGE = 0.2  # horizontal distance between overlapping X markers

    for sampler in samplers:
        s = sub[sub.sampler == sampler].set_index("constraint_num")
        color = color_for(sampler)
        display_name = get_formatted_sampler_name(sampler)

        y_full = s[mean_col].reindex(x_full)
        ax.plot(
            x_full,
            y_full,
            label=display_name,
            color=color,
            marker="o",
            markersize=3,
            linewidth=1.5,
        )
        if std_col is not None:
            std_full = s[std_col].reindex(x_full)
            floor = 0 if ylim is None else ylim[0]
            cap = 1.0 if ylim is None else ylim[1]
            lower = (y_full - std_full).clip(lower=floor)
            upper = (y_full + std_full).clip(upper=cap)
            ax.fill_between(x_full, lower, upper, color=color, alpha=0.15)

        if excluded_instances is not None and not excluded_instances.empty:
            exc = excluded_instances[
                (excluded_instances.category == category)
                & (excluded_instances.subset == subset)
                & (excluded_instances.sampler == sampler)
            ]
            if not exc.empty:
                xs = []
                for num in exc["constraint_num"]:
                    group = excluded_by_instance[num]
                    idx = group.index(sampler)
                    xs.append(num + (idx - (len(group) - 1) / 2) * 2 * X_DODGE)
                ax.plot(
                    xs,
                    np.full(len(exc), 0.015),
                    marker="x",
                    linestyle="none",
                    color=color,
                    markersize=6,
                    markeredgewidth=1.5,
                    transform=trans,
                    clip_on=False,
                    zorder=5,
                )

    ax.set_xlabel("Benchmark instance")
    ax.set_ylabel(ylabel)
    ax.set_xlim(1, NUM_INSTANCES)
    if ylim is not None:
        ax.set_ylim(*ylim)
    ax.set_title(f"{title} — {category}/{subset}")

    handles, labels = ax.get_legend_handles_labels()
    if excluded_instances is not None and not excluded_instances.empty:
        handles.append(
            Line2D(
                [],
                [],
                marker="x",
                linestyle="none",
                color="black",
                markersize=6,
                markeredgewidth=1.5,
            )
        )
        labels.append("Excluded (timeout)")
    ax.legend(handles, labels, loc="best", fontsize=8, ncol=2)

    ax.grid(True, alpha=0.3)
    fig.tight_layout()

    out_path = output_dir / f"{out_name}_{category}_{subset}.pdf"
    fig.savefig(out_path)
    fig.savefig(out_path.with_suffix(".png"), dpi=200)
    plt.close(fig)
    print(f"Saved {out_path}")


def plot_position_line(
    pos_df: pd.DataFrame,
    value_col: str,
    category: str,
    subset: str,
    ylabel: str,
    title: str,
    out_name: str,
    output_dir: Path,
):
    sub = pos_df[(pos_df.category == category) & (pos_df.subset == subset)]
    if sub.empty:
        return

    per_pos = (
        sub.groupby(["sampler", "position"])[value_col]
        .agg(["mean", "std"])
        .reset_index()
    )
    per_pos["std"] = per_pos["std"].fillna(0.0)

    samplers = sampler_order(per_pos["sampler"].unique())
    fig, ax = plt.subplots(figsize=(8, 5))

    for sampler in samplers:
        s = per_pos[per_pos.sampler == sampler].sort_values("position")
        color = color_for(sampler)
        display_name = get_formatted_sampler_name(sampler)
        ax.plot(
            s["position"], s["mean"], label=display_name, color=color, linewidth=1.5
        )
        lower = (s["mean"] - s["std"]).clip(lower=0)
        upper = (s["mean"] + s["std"]).clip(upper=1.0)
        ax.fill_between(s["position"], lower, upper, color=color, alpha=0.15)

    ax.set_xlabel("Position within batch (j)")
    ax.set_ylabel(ylabel)
    ax.set_xlim(1, N_VALUATIONS)
    ax.set_ylim(0, 1.05)
    ax.set_title(f"{title} — {category}/{subset}")
    ax.legend(loc="best", fontsize=8, ncol=2)
    ax.grid(True, alpha=0.3)
    fig.tight_layout()

    out_path = output_dir / f"{out_name}_{category}_{subset}.pdf"
    fig.savefig(out_path)
    fig.savefig(out_path.with_suffix(".png"), dpi=200)
    plt.close(fig)
    print(f"Saved {out_path}")


def plot_compcover_boxplot(compcover_agg: pd.DataFrame, output_dir: Path):
    if compcover_agg.empty:
        print("No discontiguous-domain variables found; skipping CompCover plot.")
        return

    samplers = sampler_order(compcover_agg["sampler"].unique())
    data = [
        compcover_agg[compcover_agg.sampler == s]["comp_cover"].values for s in samplers
    ]
    display_names = [get_formatted_sampler_name(s) for s in samplers]

    fig, ax = plt.subplots(figsize=(max(6, 1.4 * len(samplers)), 5))
    bp = ax.boxplot(
        data, tick_labels=display_names, patch_artist=True, showfliers=True, widths=0.6
    )
    for i, box in enumerate(bp["boxes"]):
        box.set_facecolor(color_for(samplers[i]))
        box.set_alpha(0.7)

    ax.set_ylabel(
        "Mean component coverage across instances\n"
        "(fraction of domain components visited)"
    )
    ax.set_xlabel("Sampler")
    ax.set_title(
        "Coverage of discontiguous domain components\n"
        "(pooled across all instances, all subsets)",
        y=1.02,
    )
    ax.set_ylim(-0.05, 1.05)
    ax.grid(True, axis="y", alpha=0.3)
    fig.tight_layout()

    out_path = output_dir / "compcover_global.pdf"
    fig.savefig(out_path)
    fig.savefig(out_path.with_suffix(".png"), dpi=200)
    plt.close(fig)
    print(f"Saved {out_path}")


def plot_timeout_valuations(df_excluded: pd.DataFrame, output_dir: Path):
    if df_excluded.empty:
        print("No timed-out-instance runs found; skipping timeout-valuations plot.")
        return

    d_all = df_excluded.copy()
    d_all["valuations_found"] = d_all.apply(
        lambda r: (
            r["number_models"] if pd.notna(r["number_models"]) else len(r["models"])
        ),
        axis=1,
    )
    d_all["instance_id"] = d_all.apply(
        lambda r: f"{r['category']}/{r['subset']} #{r['constraint_num']:02d}", axis=1
    )

    samplers = sampler_order(d_all["sampler"].unique())

    # Per sampler: instances ordered by mean valuations found (ascending), as before
    orders = {}
    for sampler in samplers:
        d = d_all[d_all.sampler == sampler]
        orders[sampler] = (
            d.groupby("instance_id")["valuations_found"]
            .mean()
            .sort_values()
            .index.tolist()
        )

    # Panel widths proportional to the number of instances in each panel
    width_ratios = [len(orders[s]) + 1 for s in samplers]
    total_instances = sum(len(orders[s]) for s in samplers)
    fig, axes = plt.subplots(
        1,
        len(samplers),
        sharey=True,
        figsize=(max(7, 0.5 * total_instances + 1.5 * len(samplers)), 5),
        gridspec_kw={"width_ratios": width_ratios},
        squeeze=False,
    )
    axes = axes[0]

    rng = np.random.default_rng(0)
    completed_labelled = False
    timeout_labelled = False

    for ax, sampler in zip(axes, samplers):
        d = d_all[d_all.sampler == sampler]
        order = orders[sampler]
        x_pos = {inst: i for i, inst in enumerate(order)}

        for inst in order:
            rows = d[d.instance_id == inst]
            timed_out = rows[rows["timed_out"]]
            completed = rows[~rows["timed_out"]]

            if not completed.empty:
                xs = x_pos[inst] + rng.uniform(-0.15, 0.15, size=len(completed))
                ax.scatter(
                    xs,
                    completed["valuations_found"],
                    color="#4C72B0",
                    alpha=0.6,
                    s=18,
                    zorder=2,
                    label="Completed run" if not completed_labelled else None,
                )
                completed_labelled = True

            if not timed_out.empty:
                xs = x_pos[inst] + rng.uniform(-0.15, 0.15, size=len(timed_out))
                ax.scatter(
                    xs,
                    timed_out["valuations_found"],
                    color="firebrick",
                    alpha=0.6,
                    s=18,
                    marker="x",
                    zorder=2,
                    label="Timed-out run" if not timeout_labelled else None,
                )
                timeout_labelled = True

        ax.axhline(
            N_VALUATIONS,
            color="gray",
            linestyle="--",
            linewidth=1,
        )
        ax.set_xticks(range(len(order)))
        ax.set_xticklabels(order, rotation=45, ha="right", fontsize=8)
        ax.set_xlim(-0.6, len(order) - 0.4)
        ax.set_title(get_formatted_sampler_name(sampler), fontsize=10)
        ax.set_ylim(0, N_VALUATIONS * 1.1)
        ax.grid(True, axis="y", alpha=0.3)

    axes[0].set_ylabel("Valuations found")

    # Figure-level legend above the panels, so it never covers any markers
    handles = [
        Line2D(
            [],
            [],
            marker="o",
            linestyle="none",
            color="#4C72B0",
            alpha=0.6,
            markersize=5,
            label="Completed run",
        ),
        Line2D(
            [],
            [],
            marker="x",
            linestyle="none",
            color="firebrick",
            alpha=0.6,
            markersize=5,
            label="Timed-out run",
        ),
        Line2D(
            [],
            [],
            linestyle="--",
            color="gray",
            linewidth=1,
            label=f"Requested ({N_VALUATIONS})",
        ),
    ]
    fig.suptitle(
        "Number of valuations retrieved on instances that hit the timeout", y=0.98
    )
    fig.legend(
        handles=handles,
        loc="upper center",
        bbox_to_anchor=(0.5, 0.93),
        ncol=3,
        fontsize=8,
        frameon=False,
    )
    fig.supxlabel("Benchmark instance with \u2265 1 timed-out run", fontsize=10)
    fig.tight_layout(rect=[0, 0, 1, 0.87])

    out_path = output_dir / "timeout_valuations.pdf"
    fig.savefig(out_path)
    fig.savefig(out_path.with_suffix(".png"), dpi=200)
    plt.close(fig)
    print(f"Saved {out_path}")

    summary = (
        d.groupby(["instance_id", "category", "subset", "sampler", "timed_out"])
        .agg(
            n_runs=("valuations_found", "size"),
            mean_valuations_found=("valuations_found", "mean"),
            std_valuations_found=("valuations_found", "std"),
            min_valuations_found=("valuations_found", "min"),
            max_valuations_found=("valuations_found", "max"),
        )
        .reset_index()
        .round(2)
    )
    csv_path = output_dir / "timeout_summary.csv"
    summary.to_csv(csv_path, index=False)
    print(f"Saved {csv_path}")


## Summary tables


def build_diversity_summary_table(
    within_agg: pd.DataFrame, scalar_df: pd.DataFrame
) -> pd.DataFrame:
    within_summary = (
        within_agg.groupby(["category", "subset", "sampler"])
        .agg(
            n_instances=("constraint_num", "nunique"),
            mean_vv=("vv_mean", "mean"),
            mean_even_div=("even_div_mean", "mean"),
        )
        .reset_index()
    )
    cross_summary = (
        scalar_df.groupby(["category", "subset", "sampler"])
        .agg(
            mean_pos_div=("pos_div_c", "mean"),
            mean_var_pos_div=("var_pos_div_c", "mean"),
            mean_jac_div=("jac_div_c", "mean"),
        )
        .reset_index()
    )
    summary = within_summary.merge(
        cross_summary, on=["category", "subset", "sampler"], how="outer"
    )
    return summary.round(3)


# Combine every run-level diversity metric (VV, EvenDiv, CompCover) into one per-run table
def build_diversity_per_run_table(
    within_df: pd.DataFrame, compcover_df: pd.DataFrame
) -> pd.DataFrame:
    key_cols = ["category", "subset", "sampler", "constraint_num", "run_id"]
    if compcover_df.empty:
        merged = within_df.copy()
        merged["variable"] = np.nan
        merged["comp_cover"] = np.nan
    else:
        merged = within_df.merge(
            compcover_df[key_cols + ["variable", "comp_cover"]],
            on=key_cols,
            how="left",
        )
    return merged.sort_values(key_cols + ["variable"]).reset_index(drop=True)


# Combine every instance-level (i.e. already aggregated-across-runs) diversity metric into one per-instance table
def build_diversity_per_instance_table(
    within_agg: pd.DataFrame, scalar_df: pd.DataFrame, compcover_agg: pd.DataFrame
) -> pd.DataFrame:
    key_cols = ["category", "subset", "sampler", "constraint_num"]
    merged = within_agg.merge(scalar_df, on=key_cols, how="outer")
    if compcover_agg is None or compcover_agg.empty:
        merged["variable"] = np.nan
        merged["comp_cover_mean"] = np.nan
    else:
        cc = compcover_agg.rename(columns={"comp_cover": "comp_cover_mean"})
        merged = merged.merge(
            cc[key_cols + ["variable", "comp_cover_mean"]], on=key_cols, how="left"
        )
    return merged.sort_values(key_cols + ["variable"]).reset_index(drop=True)


def run_diversity_pipeline():
    output_dir = DIVERSITY_OUTPUT_DIR
    output_dir.mkdir(parents=True, exist_ok=True)

    df = load_diversity_results(RESULTS_DIR)
    print(f"Loaded {len(df)} individual run results.")

    group_cols = ["category", "subset", "sampler", "constraint_num"]
    instance_hit_timeout = df.groupby(group_cols)["timed_out"].transform("any")

    df_timeout = df[df["timed_out"]].copy()  # the specific runs that timed out
    df_excluded = df[instance_hit_timeout].copy()  # their entire groups (all runs)
    df_clean = df[~instance_hit_timeout].copy()  # groups with zero timeouts

    excluded_instances_df = df_excluded[group_cols].drop_duplicates()

    n_excluded_groups = excluded_instances_df.shape[0]
    print(
        f"{len(df_timeout)} run(s) hit the {TIMEOUT:.0f}s timeout, causing "
        f"{n_excluded_groups} sampler-instance group(s) "
        f"({len(df_excluded)} runs total, including "
        f"{len(df_excluded) - len(df_timeout)} otherwise-complete runs) to be "
        f"excluded entirely from diversity metrics. {len(df_clean)} runs remain."
    )

    if not df_excluded.empty:
        excluded_summary = (
            df_excluded.groupby(group_cols)
            .agg(
                n_runs_excluded=("run_id", "size"),
                n_runs_timed_out=("timed_out", "sum"),
            )
            .reset_index()
        )
        excluded_csv = output_dir / "excluded_instances_summary.csv"
        excluded_summary.to_csv(excluded_csv, index=False)
        print(f"Saved {excluded_csv}")

    # Within-run diversity: VV_C, EvenDiv_C (timed-out runs excluded)
    within_df = compute_within_run_metrics(df_clean)
    within_agg = aggregate_within_run(within_df)
    print(
        f"Computed within-run diversity for {len(within_agg)} sampler-instance pairs."
    )

    # Cross-run diversity: PosDiv, VarPosDiv, JacDiv (timed-out runs excluded)
    pos_df, scalar_df = compute_cross_run_metrics(df_clean)
    print(
        f"Computed cross-run diversity: {len(pos_df)} position rows, "
        f"{len(scalar_df)} sampler-instance scalar rows."
    )

    # Component coverage
    compcover_df = compute_compcover(df_clean)
    compcover_agg = aggregate_compcover(compcover_df)

    # Per-run raw data: every run-level diversity metric in one file
    per_run_csv = output_dir / "diversity_per_run.csv"
    diversity_per_run = build_diversity_per_run_table(within_df, compcover_df)
    diversity_per_run.to_csv(per_run_csv, index=False)
    print(f"Saved {per_run_csv}  ({len(diversity_per_run)} rows)")

    # Per-instance aggregated data: every instance-level diversity metric in one file
    per_instance_csv = output_dir / "diversity_per_instance.csv"
    diversity_per_instance = build_diversity_per_instance_table(
        within_agg, scalar_df, compcover_agg
    )
    diversity_per_instance.to_csv(per_instance_csv, index=False)
    print(f"Saved {per_instance_csv}  ({len(diversity_per_instance)} rows)")

    # Per-position data: PosDiv(j) and VarPosDiv(j) for every (instance, position)
    per_position_csv = output_dir / "diversity_per_position.csv"
    pos_df.sort_values(
        ["category", "subset", "sampler", "constraint_num", "position"]
    ).to_csv(per_position_csv, index=False)
    print(f"Saved {per_position_csv}  ({len(pos_df)} rows)")

    for subset in DIVERSITY_SUBSETS:
        vv_ylim = lin_ylim(within_agg, "vv_mean", subset)
        even_ylim = lin_ylim(within_agg, "even_div_mean", subset, cap=1.05)
        posd_ylim = lin_ylim(scalar_df, "pos_div_c", subset, cap=1.05)
        varp_ylim = lin_ylim(scalar_df, "var_pos_div_c", subset, cap=1.05)
        jac_ylim = lin_ylim(scalar_df, "jac_div_c", subset, cap=1.05)
        for category in DIVERSITY_CATEGORIES:
            plot_boxplot(
                within_agg,
                "vv_mean",
                category,
                subset,
                ylabel="Mean value variety per benchmark instance (VV_C)",
                title="Within-run value variety across instances",
                out_name="boxplot_vv",
                output_dir=output_dir,
                ylim=vv_ylim,
            )
            plot_instance_line(
                within_agg,
                "vv_mean",
                category,
                subset,
                ylabel="Mean VV_C, \u00b1 1 std over runs",
                title="Value variety vs. benchmark instance",
                out_name="instance_vv",
                output_dir=output_dir,
                std_col="vv_std",
                ylim=vv_ylim,
                excluded_instances=excluded_instances_df,
            )
            plot_boxplot(
                within_agg,
                "even_div_mean",
                category,
                subset,
                ylabel="Mean evenness diversity per benchmark instance (EvenDiv_C)",
                title="Within-run evenness diversity across instances",
                out_name="boxplot_evendiv",
                output_dir=output_dir,
                ylim=even_ylim,
            )
            plot_instance_line(
                within_agg,
                "even_div_mean",
                category,
                subset,
                ylabel="Mean EvenDiv_C, \u00b1 1 std over runs",
                title="Evenness diversity vs. benchmark instance",
                out_name="instance_evendiv",
                output_dir=output_dir,
                std_col="even_div_std",
                ylim=even_ylim,
                excluded_instances=excluded_instances_df,
            )

            plot_boxplot(
                scalar_df,
                "pos_div_c",
                category,
                subset,
                ylabel="Mean position-wise diversity per benchmark instance (PosDiv_C)",
                title="Cross-run position-wise diversity across instances",
                out_name="boxplot_posdiv",
                output_dir=output_dir,
                ylim=posd_ylim,
            )
            plot_instance_line(
                scalar_df,
                "pos_div_c",
                category,
                subset,
                ylabel="PosDiv_C",
                title="Position-wise diversity vs. benchmark instance",
                out_name="instance_posdiv",
                output_dir=output_dir,
                ylim=posd_ylim,
                excluded_instances=excluded_instances_df,
            )
            plot_boxplot(
                scalar_df,
                "var_pos_div_c",
                category,
                subset,
                ylabel="Mean per-variable position-wise diversity per benchmark instance (VarPosDiv_C)",
                title="Cross-run per-variable position diversity across instances",
                out_name="boxplot_varposdiv",
                output_dir=output_dir,
                ylim=varp_ylim,
            )
            plot_instance_line(
                scalar_df,
                "var_pos_div_c",
                category,
                subset,
                ylabel="VarPosDiv_C",
                title="Per-variable position diversity vs. benchmark instance",
                out_name="instance_varposdiv",
                output_dir=output_dir,
                ylim=varp_ylim,
                excluded_instances=excluded_instances_df,
            )
            plot_boxplot(
                scalar_df,
                "jac_div_c",
                category,
                subset,
                ylabel="Mean Jaccard diversity per benchmark instance (JacDiv_C)",
                title="Cross-run Jaccard diversity across instances",
                out_name="boxplot_jacdiv",
                output_dir=output_dir,
                ylim=jac_ylim,
            )
            plot_instance_line(
                scalar_df,
                "jac_div_c",
                category,
                subset,
                ylabel="JacDiv_C",
                title="Jaccard diversity vs. benchmark instance",
                out_name="instance_jacdiv",
                output_dir=output_dir,
                ylim=jac_ylim,
                excluded_instances=excluded_instances_df,
            )

            plot_position_line(
                pos_df,
                "pos_div",
                category,
                subset,
                ylabel="Mean PosDiv, \u00b1 1 std across benchmark instances",
                title="Position-wise diversity vs. position",
                out_name="position_posdiv",
                output_dir=output_dir,
            )
            plot_position_line(
                pos_df,
                "var_pos_div",
                category,
                subset,
                ylabel="Mean VarPosDiv, \u00b1 1 std across benchmark instances",
                title="Per-variable position-wise diversity vs. position",
                out_name="position_varposdiv",
                output_dir=output_dir,
            )

    plot_compcover_boxplot(compcover_agg, output_dir)

    df_single_timed_out = load_single_subset_timeout_runs(RESULTS_DIR)
    if not df_single_timed_out.empty:
        n_single_groups = df_single_timed_out[group_cols].drop_duplicates().shape[0]
        print(
            f"Also including {len(df_single_timed_out)} run(s) from {n_single_groups} 'single'-group."
        )
    df_excluded_for_timeout_plot = pd.concat(
        [df_excluded, df_single_timed_out], ignore_index=True
    )

    # Timed-out runs: separate, pooled analysis (excluded from diversity metrics)
    plot_timeout_valuations(df_excluded_for_timeout_plot, output_dir)

    summary = build_diversity_summary_table(within_agg, scalar_df)
    csv_path = output_dir / "diversity_summary.csv"
    summary.to_csv(csv_path, index=False)
    print(f"Saved {csv_path}")

    if not compcover_agg.empty:
        compcover_csv = output_dir / "compcover_summary.csv"
        (
            compcover_agg.groupby("sampler")["comp_cover"]
            .agg(["mean", "std", "count"])
            .round(3)
            .to_csv(compcover_csv)
        )
        print(f"Saved {compcover_csv}")

    print(f"\nDone. Diversity plots and tables written to '{output_dir}'")
    return df, within_agg, scalar_df, pos_df, compcover_agg


def main():
    run_runtime_pipeline()
    print()
    run_diversity_pipeline()


if __name__ == "__main__":
    main()
