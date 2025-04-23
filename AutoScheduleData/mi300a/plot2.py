from math import sqrt
import sqlite3
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Connect to the SQLite database
db_path = "./npbench.db"  # Replace with your actual database file
conn_in = sqlite3.connect(db_path)

cursor_in = conn_in.cursor()
cursor_in.execute("SELECT name FROM sqlite_master WHERE type='table';")
table = [row[0] for row in cursor_in.fetchall()][1]


df = pd.read_sql(f"SELECT * FROM {table}", conn_in)

"""
print(df)
# Group by 'benchmark' column
#grouped_df = df.groupby("benchmark")
grouped_df = df.groupby("benchmark")
for (benchmark), group in grouped_df:
    print(f"Benchmark: {benchmark}")
    for device, group in group.groupby("device"):
        print(f"Device: {device}")
        print(group.head())  # Show first few rows of each group
        print("-" * 50)
    print("=" * 50)
"""

df = df.loc[df["framework"] != "numpy"]
# Group by 'benchmark'
grouped_df = df.groupby("benchmark")

# Create subplots for each benchmark
num_benchmarks = len(grouped_df)
# Create side-by-side subplots

r = int(sqrt(num_benchmarks))
c = int(num_benchmarks / r)
fig, axes = plt.subplots(nrows=r, ncols=c, figsize=(5 * r, 5 * c), sharey=False, sharex=False)

axes = axes.flatten()

# If only one benchmark exists, make sure axes is an iterable
if num_benchmarks == 1:
    axes = [axes]

custom_palette = {
    'v100': 'green',
    'mi250x': 'red',
    'numpy': 'blue',
    'a100': 'orange',
    'epyc7742': 'purple',
    'mi300x': 'brown'
}

i = 0
# Iterate over each benchmark and create a boxplot
for ax, (benchmark, group) in zip(axes, grouped_df):
    group2 = group.groupby("framework")
    max_result = group["time"].max()
    sns.boxplot(x="framework", y="time", data=group, ax=ax, palette=custom_palette, hue="device", legend=False)  # Replace 'value_column' with the actual numerical column
    ax.set_title(f"Benchmark: {benchmark}")
    ax.set_xlabel("Device + Framework")
    ax.set_ylabel("Value")  # Adjust based on actual data
    labels = [label.get_text().replace(" ", "\n") for label in ax.get_xticklabels()]
    ax.set_xticklabels(labels)
    print("mx", float(max_result), type(max_result))
    ax.set_ylim(0, float(max_result) * 1.15)  # Adjust based on actual data
    ax.set_aspect('auto', adjustable='box')
    #ax.set_yscale('log')
    i+=1

fig.tight_layout()
fig.savefig("plot.png")

# Close the connection
conn_in.close()
