from math import sqrt
import sqlite3
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt


db_path = "./npbench.db"
conn_in = sqlite3.connect(db_path)

cursor_in = conn_in.cursor()
cursor_in.execute("SELECT name FROM sqlite_master WHERE type='table';")
table = [row[0] for row in cursor_in.fetchall()][1]


df = pd.read_sql(f"SELECT * FROM {table}", conn_in)

df = df.loc[df["framework"] != "numpy"]
grouped_df = df.groupby("benchmark")
df["time"] = df["time"].astype(float)

num_benchmarks = len(grouped_df)

r = int(sqrt(num_benchmarks))
c = int(num_benchmarks / r)
fig, axes = plt.subplots(nrows=r, ncols=c, figsize=(5 * r, 5 * c), sharey=False, sharex=False)

axes = axes.flatten()

if num_benchmarks == 1:
    axes = [axes]

custom_palette = {
    'v100': 'seagreen',
    'mi250x': 'firebrick',
    'numpy': 'blue',
    'a100': 'darkorange',
    'epyc7742': 'plum',
    'mi300a': 'peru',
    'gh200': 'skyblue',
}

i = 0
for ax, (benchmark, group) in zip(axes, grouped_df):
    group2 = group.groupby("framework")
    max_result = group["time"].max()
    sns.boxplot(x="framework", y="time", data=group, ax=ax, palette=custom_palette, hue="device", legend=False)  # Replace 'value_column' with the actual numerical column
    ax.set_title(f"Benchmark: {benchmark}")
    ax.set_xlabel("Device + Framework")
    ax.set_ylabel("Value")
    labels = [label.get_text().replace(" ", "\n") for label in ax.get_xticklabels()]
    ax.set_xticklabels(labels)
    print("mx", float(max_result), type(max_result))
    ax.set_ylim(0, float(max_result) * 1.15)
    ax.set_aspect('auto', adjustable='box')
    i+=1

fig.tight_layout()
fig.savefig("plot.png")

# Close the connection
conn_in.close()
