import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Set Seaborn style
sns.set(style="whitegrid")

# Define the bootstrap_ci function
def bootstrap_ci(data, n_iterations=1000, ci_percentile=95.0):
    """
    Calculate bootstrap confidence intervals for the median of the data.

    Parameters:
    - data: list or array of numerical data
    - n_iterations: number of bootstrap iterations (default is 1000)
    - ci_percentile: confidence interval percentile (default is 95)
    
    Returns:
    - median: median of the original data
    - low: lower bound of the confidence interval
    - high: upper bound of the confidence interval
    """
    data = np.array(data)

    # Compute the median of the original data
    median = np.median(data)

    # Create an array to store bootstrap samples
    bootstrap_medians = np.zeros(n_iterations)

    # Perform bootstrap sampling
    for i in range(n_iterations):
        resampled_data = np.random.choice(data, size=len(data), replace=True)
        bootstrap_medians[i] = np.median(resampled_data)

    # Calculate the lower and upper percentiles for the confidence interval
    lower_percentile = (100.0 - ci_percentile) / 2.0
    upper_percentile = 100.0 - lower_percentile

    low = np.percentile(bootstrap_medians, lower_percentile)
    high = np.percentile(bootstrap_medians, upper_percentile)

    return median, low, high

# Load the data
soa_data = pd.read_csv('param_simulation_SoA.csv')
aos_data = pd.read_csv('param_simulation_AoS.csv')

# Convert time to milliseconds
soa_data['Time(ms)'] = soa_data['Time(us)'] / 1000.0
aos_data['Time(ms)'] = aos_data['Time(us)'] / 1000.0

# Filter data to include only problem sizes >= 1024
soa_data = soa_data[soa_data['N'] >= 1024]
aos_data = aos_data[aos_data['N'] >= 1024]

# Group by Name and N and calculate the median
soa_grouped = soa_data.groupby(['Name', 'N'])['Time(ms)'].median().reset_index()
aos_grouped = aos_data.groupby(['Name', 'N'])['Time(ms)'].median().reset_index()

# Plotting
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(6, 6.2))

# Set positions for bars (one for SoA, one for AoS)
bar_width = 0.35
index = range(len(soa_grouped)//2)

# Plotting SoA bars
for name in soa_grouped['Name'].unique():
    subset = soa_grouped[soa_grouped['Name'] == name]
    print(subset)

    # Get bootstrap CI for error bars
    subset2 = soa_data[soa_data['Name'] == name]

    # Prepare lists to hold the statistics
    Ns = sorted(subset['N'].unique())
    medians = []
    lows = []
    highs = []

    # Compute bootstrap CI for each problem size N
    for N in Ns:
        times = subset2[subset2['N'] == N]['Time(ms)']
        median, low, high = bootstrap_ci(times)
        medians.append(median)
        lows.append(low)
        highs.append(high)

    # Convert to NumPy arrays if needed
    medians = np.array(medians)
    lows = np.array(lows)
    highs = np.array(highs)
    error_soa = highs - medians  # Upper error
    error_soa_neg = medians - lows  # Lower error

    if name == 'AoS':
        ax1.bar([i - bar_width/2 for i in index], subset['Time(ms)'], bar_width, label=f'{name}', color="b", yerr=[error_soa_neg, error_soa], capsize=5)
    else:
        ax1.bar([i + bar_width/2 for i in index], subset['Time(ms)'], bar_width, label=f'{name}', color="orange", yerr=[error_soa_neg, error_soa], capsize=5)
Ns = sorted(soa_grouped['N'].unique())
for i, N in enumerate(Ns):
    soa_time = soa_grouped[(soa_grouped['Name'] == 'SoA') & (soa_grouped['N'] == N)]['Time(ms)'].values
    aos_time = soa_grouped[(soa_grouped['Name'] == 'AoS') & (soa_grouped['N'] == N)]['Time(ms)'].values

    if len(soa_time) == 0 or len(aos_time) == 0:
        continue

    soa_val = soa_time[0]
    aos_val = aos_time[0]

    if soa_val < aos_val:
        speedup = aos_val / soa_val
        x = i + bar_width / 2  # SoA is at +offset
        y = soa_val
    else:
        speedup = soa_val / aos_val
        x = i - bar_width / 2  # AoS is at -offset
        y = aos_val

    ax1.text(x, y * 1.1, f'{speedup:.2f}×', ha='center', va='bottom', fontsize=8)

# Plotting AoS bars
for name in aos_grouped['Name'].unique():
    subset = aos_grouped[aos_grouped['Name'] == name]
    print(subset)

    # Get bootstrap CI for error bars
    subset2 = soa_data[soa_data['Name'] == name]

    # Prepare lists to hold the statistics
    Ns = sorted(subset['N'].unique())
    medians = []
    lows = []
    highs = []

    # Compute bootstrap CI for each problem size N
    for N in Ns:
        times = subset2[subset2['N'] == N]['Time(ms)']
        median, low, high = bootstrap_ci(times)
        medians.append(median)
        lows.append(low)
        highs.append(high)

    # Convert to NumPy arrays if needed
    medians = np.array(medians)
    lows = np.array(lows)
    highs = np.array(highs)
    error_aos = highs - medians  # Upper error
    error_aos_neg = medians - lows  # Lower error

    if name == 'AoS':
        ax2.bar([i - bar_width/2 for i in index], subset['Time(ms)'], bar_width, label=f'{name}', color="b", yerr=[error_aos_neg, error_aos], capsize=5)
    else:
        ax2.bar([i + bar_width/2 for i in index], subset['Time(ms)'], bar_width, label=f'{name}', color="orange", yerr=[error_aos_neg, error_aos], capsize=5)
Ns = sorted(aos_grouped['N'].unique())
for i, N in enumerate(Ns):
    soa_time = aos_grouped[(aos_grouped['Name'] == 'SoA') & (soa_grouped['N'] == N)]['Time(ms)'].values
    aos_time = aos_grouped[(aos_grouped['Name'] == 'AoS') & (soa_grouped['N'] == N)]['Time(ms)'].values

    if len(soa_time) == 0 or len(aos_time) == 0:
        continue

    soa_val = soa_time[0]
    aos_val = aos_time[0]

    if soa_val < aos_val:
        speedup = aos_val / soa_val
        x = i + bar_width / 2  # SoA is at +offset
        y = soa_val
    else:
        speedup = soa_val / aos_val
        x = i - bar_width / 2  # AoS is at -offset
        y = aos_val

    ax2.text(x, y * 1.1, f'{speedup:.2f}×', ha='center', va='bottom', fontsize=8)


# Customize the SoA subplot
ax1.set_title('Parametrized Simulation\nComplete-Struct Accesses')
ax1.set_xlabel('N (Problem Size)')
ax1.set_ylabel('Median Time (ms)')
ax1.set_xticks([i + bar_width / 2 for i in index])
ax1.set_xticklabels(soa_grouped['N'].unique())

# Set log-log scale
ax1.set_yscale('log')
# Set y-limit
ax1.set_ylim(1, 10000)
# Add grid lines with dashed style
ax1.grid(visible=True, which="both", linestyle='--', linewidth=0.7)

fig.subplots_adjust(hspace=0.4, bottom=0.2)
ax2.legend(bbox_to_anchor=(0.55, -0.25), ncol=2)

# Customize the AoS subplot
ax2.set_title('Element-wise Accesses')
ax2.set_xlabel('N (Problem Size)')
ax2.set_ylabel('Median Time (ms)')
ax2.set_xticks([i + bar_width / 2 for i in index])
ax2.set_xticklabels(aos_grouped['N'].unique())

# Set log-log scale
ax2.set_yscale('log')

# Set y-limit
ax2.set_ylim(1, 10000)

# Add grid lines with dashed style
ax2.grid(visible=True, which="both", linestyle='--', linewidth=0.7)

yticks = [1, 10, 100, 1000, 10000]

ax1.set_yticks(yticks)
ax2.set_yticks(yticks)
ax1.set_yticklabels(yticks)
ax2.set_yticklabels(yticks)


# Show the plot
plt.tight_layout()

plt.savefig('AoS_vs_SoA.png', dpi=600)
plt.savefig('AoS_vs_SoA.pdf')
