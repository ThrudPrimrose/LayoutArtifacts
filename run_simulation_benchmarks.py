# All the benchmarks are expected to have the following interface:
# def check_correctness(verbose) -> bool:
# def run_benchmark(csv_filepath) -> None:

import os
import pandas as pd
import seaborn as sns
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
    sns.set_theme(style="whitegrid")
    # df_min = df.groupby(["Name", "N"], as_index=False)["Time(ms)"].min()
    g = sns.relplot(
        data=df,
        x="N",
        y="Time(ms)",
        hue="Name",
        kind="line",
        height=5,
        aspect=2,
        palette="muted",
    )
    title = b.__name__.split(".")[-1]
    title = title.replace("_", " ").title()
    title = " ".join([word.capitalize() for word in title.split()])
    g.set(title=title)
    g.ax.set_xscale("log", base=2)
    g.ax.set_yscale("log", base=10)
    g.savefig(f"plots/{b.__name__.split('.')[-1]}.pdf")
