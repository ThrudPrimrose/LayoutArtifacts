# All the benchmarks are expected to have the following interface:
# def check_correctness(verbose) -> bool:
# def run_benchmark(csv_filepath) -> None:

import os
import pandas as pd
import seaborn as sns

import AoSvsSoA.nbody_simulation
import AoSvsSoA.particle_simulation
import AoSvsSoA.rigid_body_simulation
import AoSvsSoA.soft_body_simulation

benchmarks = [
    AoSvsSoA.nbody_simulation,
    AoSvsSoA.particle_simulation,
    AoSvsSoA.rigid_body_simulation,
    AoSvsSoA.soft_body_simulation,
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
    g.set(xscale="log", yscale="log", title=title)
    g.savefig(f"plots/{b.__name__.split('.')[-1]}.pdf")
