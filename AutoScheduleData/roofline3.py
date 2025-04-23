import json
from math import sqrt
import sqlite3
from matplotlib.patches import Patch
from matplotlib.ticker import MultipleLocator
import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

sns.set(style="whitegrid")
db_path = "./npbench.db"
conn_in = sqlite3.connect(db_path)

cursor_in = conn_in.cursor()
cursor_in.execute("SELECT name FROM sqlite_master WHERE type='table';")
table = [row[0] for row in cursor_in.fetchall()][1]

df = pd.read_sql(f"SELECT * FROM {table}", conn_in)

df = df.loc[df["framework"] != "numpy"]
df["time"] = df["time"].astype(float)
df = df[~((df["framework"] == "a100 dace_gpu"))]
df = df[~((df["device"] == "a100"))]
df = df[~((df["device"] == "gh200"))]
grouped_df = df.groupby("benchmark")
num_benchmarks = len(grouped_df)

r = int(sqrt(num_benchmarks))
c = int(num_benchmarks / r)

fig, axes = plt.subplots(nrows=1, ncols=1, figsize=(6, 6.15), sharey=False, sharex=False)


custom_palette = {
    'v100': 'seagreen',
    'mi250x': 'b',
    'numpy': 'blue',
    #'a100': 'darkorange',
    'epyc7742': 'plum',
    'mi300a': 'orange',
    #'gh200': 'skyblue',
}

i = 0
legend_handles = []
legend_labels = []
for (benchmark, group) in grouped_df:
    if benchmark != "jacobi2d":
        continue
    group2 = group.groupby("framework")
    max_result = group["time"].max()

    summary = group.groupby(["framework", "device"])['time'].agg(["median", lambda x: x.quantile(0.025), lambda x: x.quantile(0.975)]).reset_index()
    summary.columns = ["framework", "device", "median", "low", "high"]

    # Get unique frameworks and devices
    frameworks = summary['framework'].unique()
    devices = summary['device'].unique()

    bar_width = 0.35
    index = np.arange(len(frameworks))  # x positions for the bars

    # Group the data by both 'framework' and 'device'
    grouped_data = summary.groupby(['framework', 'device'])['median'].mean().unstack()

    # Plot bars for each device within each framework
    dev_x_ticklabels = ["MI250x", "", "MI300A", ""]
    dev_x_tick_offsets = [0.8, 1, 2.5, 2.7]

    dd = {
        "mi250x dace_gpu":0.6,
        "mi250x dace_gpu_auto_tile":1,
        "mi300a dace_gpu":2.3,
        "mi300a dace_gpu_auto_tile":2.7,
    }

    base = 0
    j = 0
    for i, device in enumerate(devices):
        y_vals = grouped_data[device].values
        py_vals = y_vals[~np.isnan(y_vals)]
        low_vals = summary[summary['device'] == device]['low'].values
        low_vals = low_vals[~np.isnan(low_vals)]
        high_vals = summary[summary['device'] == device]['high'].values
        high_vals = high_vals[~np.isnan(high_vals)]

        # Get the lower and upper bounds (error margins)
        yerr = [py_vals - low_vals,
                high_vals - py_vals]

        # Get the x positions, offset bars for each device
        x_vals = [key for key in grouped_data[device].keys()]
        print("XV", x_vals)
        x_ticks = [dd[key] for key in grouped_data[device].keys()]
        print("XT", x_ticks)
        #print(x_vals)
        #j += len(x_vals)
        # Set x-ticks and labels
        #ax.set_xticklabels(dev_x_ticklabels)
        print(dev_x_ticklabels)
        print(dev_x_tick_offsets)

        ax = axes

        colors = ["orange" if dev == "" else "b" for dev in dev_x_ticklabels]
        bar = ax.bar(x_ticks, y_vals, bar_width, label=device, color=colors)

        legend_color = "orange" if all(dev == "" for dev in dev_x_ticklabels) else "b"



        # Add error bars
        mask = ~np.isnan(y_vals)  # Create a mask for non-NaN values in y_vals
        x_vals = np.array(x_vals)
        y_vals = np.array(y_vals)
        x_ticks = np.array(x_ticks)
        x_vals_filtered = x_vals[mask]  # Apply the mask to x_vals
        y_vals_filtered = y_vals[mask]  # Apply the mask to y_vals
        x_ticks_filtered = x_ticks[mask]
        ax.errorbar(x=x_ticks_filtered,
                    y=y_vals_filtered,
                    yerr=yerr, fmt='none', color='black', capsize=5, elinewidth=2)


        # Rotate x-tick labels for better readability
        #plt.xticks(rotation=45, ha='right')

        if benchmark == "jacobi2d":
            with open(device + ".json", "r") as f:
                dev_data = json.load(f)

            with open(benchmark + ".json", "r") as f:
                bench_data = json.load(f)

            _flops = bench_data.get("benchmark", {}).get("roofline", {}).get("XL", {}).get("flops", 1)
            _bytes = bench_data.get("benchmark", {}).get("roofline", {}).get("XL", {}).get("bytes", 1)
            op_intensity = _flops / _bytes

            mem_bandwidth = dev_data[device]["scalar"]["memory_bandwidth"]
            peak_flops = dev_data[device]["scalar"]["flops"]["64-bit"]
            theoretical_peak_perf = min(op_intensity * mem_bandwidth, peak_flops)
            theoretical_best_time = _flops / theoretical_peak_perf
            print("BT", [(theoretical_best_time * 100.0 / y_val) for y_val in y_vals])
            y_vals = [theoretical_best_time]
            bar = ax.bar(x_ticks, y_vals, bar_width, label="Theoretically Best Runtime", color="#00A878" )

            if "Theoretically Best Runtime" not in legend_labels:
                legend_handles.append(bar)  # Append the current bar to legend_handles
                legend_labels.append("Theoretically Best Runtime")  # Append the device label to legend_labels

            for i, (x, y) in enumerate(zip(x_ticks_filtered, y_vals_filtered)):
                percentage_of_peak = (theoretical_best_time / y) * 100
                ax.text(x, y + 0.01 if percentage_of_peak < 40 else y + 0.06, f"{percentage_of_peak:.1f}%", ha='center', va='bottom', fontsize=10, fontweight='bold')

            fig.savefig("uwu.png")

    ax.set_title(f"Jacobi2D Stencil with Implicit Layout Transformations")
    ax.set_xlabel("N x N (N=8194, Problem Size)")
    ax.set_ylabel("Median Runtime (ms)")

    ax.set_xticks([0.8, 2.5], [l.replace(" ","\n").replace("mi300a", "MI300A").replace("mi250x", "MI250X") for l in dev_x_ticklabels if l != ""])
    ax.set_xlim(-0.25, len(dev_x_ticklabels) - 0.75)

    #labels = [label.get_text().replace(" ", "\n") for label in ax.get_xticklabels()]
    #ax.set_xticklabels(labels)
    print("mx", float(max_result), type(max_result))
    ax.set_ylim(0, float(max_result) * 1.05)
    ax.grid(visible=True, which="both", linestyle="--")
    current_locator = ax.yaxis.get_major_locator()
    if isinstance(current_locator, MultipleLocator):
        new_interval = current_locator._interval / 2  # Reduce interval by x2
        ax.yaxis.set_major_locator(MultipleLocator(new_interval))
    else:
        ax.yaxis.set_major_locator(MultipleLocator(0.1))  # Set a reasonable default

    ax.set_aspect('auto', adjustable='box')
    i += 1
    current_ticks = ax.get_yticks()

    #ax.set_yticks(current_ticks)

    ms_labels = [f"{tick*1000:.0f}" for tick in current_ticks]  # Adjust formatting as needed
    ax.set_yticklabels(ms_labels)


fig.subplots_adjust(wspace=0.3, hspace=0.3, bottom=0.3)  # Increase bottom margin to make room for legend
orange_patch = Patch(facecolor='orange', label='w. Layout Transformation')
blue_patch = Patch(facecolor='b', label='w/o Layout Transformation')
# Adjust the legend size and position
print(legend_handles, legend_labels)
ax.legend(legend_handles + [orange_patch, blue_patch], legend_labels + ["w. Layout Transformation", "w/o Layout Transformation"], loc='upper center', ncol=2,
           bbox_to_anchor=(0.5, -0.11),)  # Increase the size of the markers (bars in this case)

#fig.tight_layout(rect=(0, 0.15, 1, 1))  # Additional padding between subplots

for i, patch in enumerate(ax.patches):
    # Check if this patch belongs to the column you want without border
    # Remove the edge (border) from just this patch
    patch.set_edgecolor('none')
plt.tight_layout()

#fig.tight_layout()
fig.savefig("plot4.png", dpi=600)
fig.savefig("plot4.pdf")

# Close the connection
conn_in.close()
