import re
import os
import matplotlib as mpl
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

# Function to parse the file and extract the required data
def parse_file(file_path):
    with open(file_path, 'r') as file:
        data = file.read()

    # Find the SDFG blocks and look for the times for Map kernel_21
    kernel_21_times = []
    transpose_before_kernel_21 = []
    lines = data.splitlines()

    # Flags to check if we have encountered transpose_impl before kernel_21
    transpose_found = False

    for i, line in enumerate(lines):
        # Search for 'Map kernel_21' line
        if 'Map kernel_21' in line:
            # Look two lines ahead to extract the times
            if i + 2 < len(lines):
                time_line = lines[i + 2]  # The line two after 'Map kernel_21'
                times = re.findall(r'\d+\.\d+', time_line)
                if len(times) == 4:
                    median_time = float(times[2])  # 3rd float is the median time
                    kernel_21_times.append(median_time)
                    transpose_before_kernel_21.append(transpose_found)
                    transpose_found = False  # Reset flag after processing kernel_21

        # Check if we encountered any 'transpose_impl' node before kernel_21
        if 'Map transpose_impl' in line:
            transpose_found = True

    return kernel_21_times, transpose_before_kernel_21

# Path to the directory containing the files
file_directory = '.'  # Adjust with the actual path
file_names = ['gpu_u_s_u_times_N_258_TSTEPS_1000.txt', 'gpu_u_s_u_times_N_514_TSTEPS_1000.txt', 'gpu_u_s_u_times_N_1026_TSTEPS_1000.txt']
# Initialize a dictionary to store data for each N value
all_data = {'258': {'times': [], 'flags': []},
            '514': {'times': [], 'flags': []},
            '1026': {'times': [], 'flags': []}}

# Process each file and store data for each N
for file_name in file_names:
    # Extract N value from file name
    N_value = file_name.split('_')[6]
    file_path = os.path.join(file_directory, file_name)
    kernel_21_times, transpose_flags = parse_file(file_path)

    # Store the data in the appropriate N bucket
    all_data[N_value]['times'].extend(kernel_21_times)
    all_data[N_value]['flags'].extend(transpose_flags)

# Prepare data for plotting
import pandas as pd

N_values = list(all_data.keys())
times = [all_data[N]['times'] for N in N_values]
flags = [all_data[N]['flags'] for N in N_values]

def bootstrap_ci(data, n_iterations=100, ci_percentile=95.0):
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
    # Ensure the data is a numpy array
    data = np.array(data)

    # Compute the median of the original data
    median = np.median(data)

    # Create an array to store bootstrap samples
    bootstrap_medians = np.zeros(n_iterations)

    # Perform bootstrap sampling
    for i in range(n_iterations):
        # Randomly sample the data with replacement
        resampled_data = np.random.choice(data, size=len(data), replace=True)
        # Store the median of the resampled data
        bootstrap_medians[i] = np.median(resampled_data)

    # Calculate the lower and upper percentiles for the confidence interval
    lower_percentile = (100.0 - ci_percentile) / 2.0
    upper_percentile = 100.0 - lower_percentile

    low = np.percentile(bootstrap_medians, lower_percentile)
    high = np.percentile(bootstrap_medians, upper_percentile)

    return median, low, high

# Create the plot
sns.set(style="whitegrid")

fig, ax = plt.subplots(figsize=(6, 6))

# Calculate positions for bars for each N value
bar_width = 0.35
index = range(len(N_values))

bars_yes = []
bars_no = []

# Color list for bars based on the transpose condition (orange if layout is transformed, blue if not)
for i, N in enumerate(N_values):
    times_for_N = times[i]
    flags_for_N = flags[i]

    # Calculate the times for "Yes" and "No"
    yes_times = [times_for_N[j] for j in range(len(times_for_N)) if flags_for_N[j]]
    no_times = [times_for_N[j] for j in range(len(times_for_N)) if not flags_for_N[j]]

    # Perform bootstrapping for "Yes" and "No"
    median_yes, low_yes, high_yes = bootstrap_ci(yes_times, n_iterations=1000, ci_percentile=95)
    median_no, low_no, high_no = bootstrap_ci(no_times, n_iterations=1000, ci_percentile=95)

    # Plot bars for "Yes" (layout transformed) and "No" (layout not transformed)
    bar_yes = ax.bar(index[i] + bar_width / 2, median_yes, bar_width, color='orange')
    bar_no = ax.bar(index[i] - bar_width / 2, median_no, bar_width, color="b")

    # Add error bars using the bootstrap confidence intervals (CI)
    ax.errorbar(index[i] + bar_width / 2, median_yes, yerr=[[median_yes - low_yes], [high_yes - median_yes]], fmt='none', color='black', capsize=5, elinewidth=2)
    ax.errorbar(index[i] - bar_width / 2, median_no, yerr=[[median_no - low_no], [high_no - median_no]], fmt='none', color='black', capsize=5, elinewidth=2)

    # Add text labels with the runtime in ms on top of the blue bars (rounded to 2 decimals)
    ax.text(index[i] - bar_width / 2, median_no + 0.9, f"{median_no:.2f} ms", ha='center', va='bottom', fontsize=10, color='gray')

    # Calculate speedup and display it on top of the orange bar (if median_no > 0)
    if median_no > 0:
        speedup = median_no / median_yes
        ax.text(index[i] + bar_width / 2, median_yes + 0.09 if N != "258" else median_yes + 0.05, f"{speedup:.2f}x", ha='center', va='bottom', fontsize=10, color='black')

    bars_yes.append(bar_yes)
    bars_no.append(bar_no)

# Customize the plot
ax.set_title('Semi-Structured Stencil Benchmark')
ax.set_xlabel('N x N x N (Problem Size)')
ax.set_ylabel('Median Runtime Time (ms)')
ax.set_yscale('log')
ax.grid(True, which='both', linestyle='--', linewidth=0.7)

ax.set_yticks([1, 10, 100, 200])
ax.set_yticklabels([1, 10, 100, 200])
ax.set_xticks(index)
ax.set_xticklabels([f"{nv}x{nv}x{nv}" for nv in N_values])
# Manually set the legend to avoid duplicates
handles, labels = ax.get_legend_handles_labels()

# Only add one label for each category
handles = [bars_yes[0][0], bars_no[0][0]]  # Use only the first bar from each category
labels = ['w. Layout Transformation', 'w/o Layout Transformation']

ax.legend(handles, labels, loc='upper center', bbox_to_anchor=(0.5, -0.1), ncol=3)

# Save the plot as PNG and PDF
plt.xticks(rotation=0)
plt.tight_layout()
plt.savefig('kernel_21_times.png', dpi=600)
plt.savefig('kernel_21_times.pdf')
