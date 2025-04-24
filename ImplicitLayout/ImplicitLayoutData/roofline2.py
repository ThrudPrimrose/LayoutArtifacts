import json
from math import sqrt
import sqlite3
import numpy as np
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
fig, axes = plt.subplots(nrows=r, ncols=c, figsize=(1, 1), sharey=False, sharex=False)

axes = axes.flatten()

if num_benchmarks == 1:
    axes = [axes]

custom_palette = {
    'v100': 'seagreen',
    'mi250x': 'firebrick',
    'numpy': 'blue',
    'epyc7742': 'plum',
    'mi300a': 'peru',
    'gh200': 'skyblue',
}

i = 0
legend_handles = []
legend_labels = []
for ax, (benchmark, group) in zip(axes, grouped_df):
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
    dev_x_ticklabels = ["MI250x", "MI250x Auto-Tile", "MI300A", "MI300A Auto-Tile", "GH200"]
    dev_x_tick_offsets = [0, 1, 2, 3, 4]

    dd = {
        "mi250x dace_gpu":0,
        "mi250x dace_gpu_auto_tile":1,
        "mi300a dace_gpu":2,
        "mi300a dace_gpu_auto_tile":3,
        "gh200 dace_gpu":4,
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

        # Plot the bars for the current device
        bar = ax.bar(x_ticks, y_vals, bar_width, label=device, color=custom_palette[device])

        if device not in legend_labels:
            legend_handles.append(bar)  # Append the current bar to legend_handles
            legend_labels.append(device)  # Append the device label to legend_labels


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
            if device != "gh200":
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
                bar = ax.bar(x_ticks_filtered, y_vals, bar_width, label="Theoretically Best Runtime", color="seagreen")

                if "Theoretically Best Runtime" not in legend_labels:
                    legend_handles.append(bar)  # Append the current bar to legend_handles
                    legend_labels.append("Theoretically Best Runtime")  # Append the device label to legend_labels


    fig.savefig("uwu.png")

    ax.set_title(f"Benchmark: {benchmark}")
    ax.set_xlabel("Device + Framework")
    ax.set_ylabel("Execution Time")
    ax.set_xticks(dev_x_tick_offsets, [l.replace(" ","\n") for l in dev_x_ticklabels])
    ax.set_xlim(-0.25, len(dev_x_ticklabels) - 0.75)

    #labels = [label.get_text().replace(" ", "\n") for label in ax.get_xticklabels()]
    #ax.set_xticklabels(labels)
    print("mx", float(max_result), type(max_result))
    ax.set_ylim(0, float(max_result) * 1.15)
    ax.set_aspect('auto', adjustable='box')
    i += 1



fig.subplots_adjust(wspace=0.3, hspace=0.3, bottom=0.3)  # Increase bottom margin to make room for legend

# Adjust the legend size and position
print(legend_handles, legend_labels)
fig.tight_layout(rect=(0, 0.05, 1, 1))  # Additional padding between subplots

fig.legend(legend_handles, legend_labels, loc='lower center', ncol=4,
           bbox_to_anchor=(0.5, -0.003),  # Position the legend at the bottom
           fontsize=28,  # Increase the font size
           markerscale=4)  # Increase the size of the markers (bars in this case)



#fig.tight_layout()
fig.savefig("plot3.png")
fig.savefig("plot3.pdf")

# Close the connection
conn_in.close()
