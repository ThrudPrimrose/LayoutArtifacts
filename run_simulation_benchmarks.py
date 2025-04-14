# All the benchmarks are expected to have the following interface:
# def check_correctness(verbose) -> bool:
# def run_benchmark(csv_filepath) -> None:

import os
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from matplotlib.ticker import LogFormatter
import warnings

# Turn off warnings
# warnings.filterwarnings("ignore")

import simulations.nbody_simulation
import simulations.particle_simulation
import simulations.rigid_body_simulation
import simulations.soft_body_simulation
import simulations.param_simulation_AoS
import simulations.param_simulation_SoA

benchmarks = [
    # simulations.nbody_simulation,
    # simulations.particle_simulation,
    # simulations.rigid_body_simulation,
    # simulations.soft_body_simulation,
    simulations.param_simulation_AoS,
    simulations.param_simulation_SoA,
]

# Check correctness of all benchmarks
for b in benchmarks:
    if b.check_correctness():
        print(f"✅ {b.__name__.split('.')[-1]} is correct")
    else:
        print(f"❌ {b.__name__.split('.')[-1]} is incorrect")

# ensure benchmarks folder exists
os.makedirs("measurements", exist_ok=True)


# Run benchmarks and save results to CSV
for b in benchmarks:
    b.run_benchmark(f"measurements/{b.__name__.split('.')[-1]}.csv")
    print(f"✅ {b.__name__.split('.')[-1]} benchmark done")


# Plot results
# The CSV files are expected to have the following header:
# Name,N,Time(us)
# We plot N on the x-axis and Time on the y-axis (log-log scale)
# Grouped by Name
os.makedirs("plots", exist_ok=True)

for b in benchmarks:
    df = pd.read_csv(f"measurements/{b.__name__.split('.')[-1]}.csv")
    df["Time(ms)"] = df["Time(us)"] / 1000
    df["Time(s)"] = df["Time(ms)"] / 1000

    sns.set(style="whitegrid")
    fig, ax = plt.subplots(figsize=(6, 6))

    g = sns.catplot(
        data=df,
        x="N",
        y="Time(ms)",
        hue="Name",
        kind="bar",
        height=5,
        aspect=2,
        palette=["b", "orange"],
        legend=True,
    )

    title = b.__name__.split(".")[-1]
    title = title.replace("_", " ").title()
    title = " ".join([word.capitalize() for word in title.split()])
    title = title.replace("Aos", "AoS").replace("Soa", "SoA").replace("Param", "Parameterized")
    g.set(title=title)
    g.ax.set_yscale("log")
    g.ax.set_xlabel("N (Problem Size)")
    g.ax.set_ylabel("Median Runtime (ms)")
    g.ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.2), ncol=2)
    g.ax.yaxis.set_major_formatter(LogFormatter(base=10.0))
    g.ax.grid(True, which='both', linestyle='--', alpha=0.7)
    g.legend.remove()
    g.figure.tight_layout()
   
    # Annotate the bars with speedup
    medians = df.groupby(["N", "Name"])["Time(ms)"].median().reset_index()
    pivot = medians.pivot(index="N", columns="Name", values="Time(ms)")

    for i, n in enumerate(pivot.index):
        times = pivot.loc[n]
        names = times.index.tolist()
        if len(names) != 2:
            continue  # skip if not exactly two methods

        t1, t2 = times[names[0]], times[names[1]]
        if t1 == t2:
            continue  # skip equal runtimes

        # Determine which is faster
        off = 0
        if t1 < t2:
            faster_time, slower_time = t1, t2
            faster_name = names[0]
        else:
            off = len(pivot.index)
            faster_time, slower_time = t2, t1
            faster_name = names[1]

        speedup = slower_time / faster_time
        speedup_text = f"{speedup:.3g}x"

        # Find the bar's position to annotate
        for j, bar in enumerate(g.ax.patches):
                if i == j - off:
                  g.ax.text(
                      bar.get_x() + bar.get_width() / 2,
                      bar.get_height() * 1.15,
                      speedup_text,
                      ha="center",
                      va="bottom",
                      fontsize=10,
                      color="black",
                  )
                  break

    
    g.figure.savefig(f"plots/{b.__name__.split('.')[-1]}.pdf")
