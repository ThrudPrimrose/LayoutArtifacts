from matplotlib.lines import Line2D
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
spdeps=0.001
def split_by_runtime(values, threshold):
    """
    Split the list of runtime values into two clusters based on a given threshold.

    Args:
        values (List[float]): Runtime values (in ms).
        threshold (float): The threshold value for splitting the clusters.

    Returns:
        Tuple[List[float], List[float]]: Two lists - one for lower values (Config1), one for higher values (Config2).
    """
    lower_cluster = [v for v in values if v < threshold]
    higher_cluster = [v for v in values if v >= threshold]

    return lower_cluster, higher_cluster


def remove_outliers(values):
    """
    Remove outliers from the list of values using the IQR method.
    
    Args:
        values (List[float]): List of runtime values.

    Returns:
        List[float]: List with outliers removed.
    """
    Q1 = np.percentile(values, 25)
    Q3 = np.percentile(values, 75)
    IQR = Q3 - Q1

    # Define bounds for outliers
    lower_bound = Q1 - 3.5 * IQR
    upper_bound = Q3 + 3.5 * IQR

    # Filter values within bounds
    return [v for v in values if lower_bound <= v <= upper_bound]

# === Step 1: Parse input files and collect data ===

dace_times = []
icon_times = []

# Parse dace_out.txt
with open("sdfg_out1.txt", "r") as f:
    for line in f:
        if "Total time:" in line:
            parts = line.strip().split()
            #try:
            time_ms = float(parts[-2])  # Extract the numeric ms value
            dace_times.append(time_ms)
            #except ValueError:
            #    pass

# Parse icon_out.txt
with open("icon_out1.txt", "r") as f:
    for line in f:
        if "Time for velocity_tendencies" in line and ("corrector step" in line or "predictor step" in line):
            parts = line.strip().split()
            try:
                time_sec = float(parts[-2])  # Value is in seconds
                time_ms = time_sec * 1000.0    # Convert to milliseconds
                icon_times.append(time_ms)
            except ValueError:
                continue

dace_times = remove_outliers(dace_times)
icon_times = remove_outliers(icon_times)


# === Step 2: Split the runtimes into clusters for both DACE and ICON ===

# Split DACE and ICON runtimes using the function
dace_config2, dace_config1 = split_by_runtime(dace_times, 0.3)
icon_config2, icon_config1 = split_by_runtime(icon_times, 0.41)

# Print results for verification
print("DaCe Config1 (Lower cluster):", dace_config1)
print("DaCe Config2 (Higher cluster):", dace_config2)
print("ICON Config1 (Lower cluster):", icon_config1)
print("ICON Config2 (Higher cluster):", icon_config2)

#print("Dace times (ms):", dace_times)
#print("ICON times (ms):", icon_times)

# Create DataFrame
data = pd.DataFrame({
    "Runtime (ms)": icon_config1 + icon_config2 +dace_config1 + dace_config2 ,
    "Configuration": ["Config1\nICON"] * len(icon_config1) + ["Config2\nICON"] * len(icon_config2) +
                     ["Config1\nOur Work"] * len(dace_config1) + ["Config2\nOur Work"] * len(dace_config2)
})

# === Step 4: Plot the boxplot ===

sns.set(style="whitegrid")
plt.figure(figsize=(6, 6.1))

palette = {
    "Config1\nICON": "b",
    "Config2\nICON": "b",
    "Config1\nOur Work": "orange",
    "Config2\nOur Work": "orange"
}
# Create the boxplot
sns.boxplot(x="Configuration", y="Runtime (ms)", data=data, palette=palette, saturation=0.85, width=0.5)

# Add titles and labels
plt.title("Runtimes of Calls to Velocity Tendencies\nAcross Configurations and Implementations")
plt.ylabel("Median Runtime (ms)")
plt.xlabel("")
plt.ylim(0.21, 0.51)
plt.grid(visible=True, which="both", linestyle='--', linewidth=0.7)

handles = [
    plt.Line2D([0], [0], marker='o', color='w', markerfacecolor='b', markersize=10, label="ICON"),
    plt.Line2D([0], [0], marker='o', color='w', markerfacecolor='orange', markersize=10, label="Our Work")
]
plt.legend(handles=handles, loc='upper center', ncol=2, bbox_to_anchor=(0.5, -0.12))


# Calculate the medians for Config1 and Config2
median_icon_config1 = np.mean(icon_config1)
median_ourwork_config1 = np.mean(dace_config1)
median_icon_config2 = np.mean(icon_config2)
median_ourwork_config2 = np.mean(dace_config2)

# Calculate speedups (Config1 and Config2)
speedup_config1 = median_icon_config1 / (median_ourwork_config1 + spdeps)
speedup_config2 = median_icon_config2 / (median_ourwork_config2 + spdeps)

# Add median speedup annotations
plt.text(2, median_ourwork_config1 + 0.02, f"{speedup_config1:.2f}x", color='black', ha='center', fontsize=12)
plt.text(3, median_ourwork_config2 + 0.04, f"{speedup_config2:.2f}x", color='black', ha='center', fontsize=12)


# Save the plot as PNG and PDF
plt.tight_layout()
plt.savefig("runtime_comparison.png", dpi=600)
plt.savefig("runtime_comparison.pdf")
