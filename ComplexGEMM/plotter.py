import os
import csv
import matplotlib.pyplot as plt
import seaborn as sns

# Dictionary to store best speedup values for each (M, N, K)
speedup_dict_soa = {}
speedup_dict_aos = {}

# Function to extract M, N, K from the filename
def extract_mnk_from_filename(filename):
    parts = filename.split('_')
    M, N, K = int(parts[-3]), int(parts[-2]), int(parts[-1].split('.')[0])
    return M, N, K

def process_csv_file(file_path, is_soa=True):
    with open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            # Extract speedup and M, N, K
            speedup = float(row['Speedup'])
            if speedup < 50.0:
                mnk = tuple(map(int, row['SDFG'].split('_')[-3:]))

                # Update the best speedup for this (M, N, K) combination
                if is_soa:
                    if mnk not in speedup_dict_soa or speedup > speedup_dict_soa[mnk]:
                        speedup_dict_soa[mnk] = speedup
                else:
                    if mnk not in speedup_dict_aos or speedup > speedup_dict_aos[mnk]:
                        speedup_dict_aos[mnk] = speedup


def process_csv_file2(file_path):
    with open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        rows_with_speedup_above_10 = []

        for row in reader:
            speedup = float(row['Speedup'])

            if speedup > 10:
                rows_with_speedup_above_10.append(row)

        return rows_with_speedup_above_10


# Example list of file paths (you can modify this as needed)
file_paths_soa = [
    "gpu_complex_gemm_soa_merged_SoA_128_32768_512.csv",
    "gpu_complex_gemm_soa_merged_SoA_4096_4096_4096.csv",
    "gpu_complex_gemm_soa_merged_SoA_16384_16384_16384.csv"
]

file_paths_aos = [
    "gpu_complex_gemm_aos_AoS_128_32768_512.csv",
    "gpu_complex_gemm_aos_AoS_4096_4096_4096.csv",
    "gpu_complex_gemm_aos_AoS_16384_16384_16384.csv"
]

# Process each file for SoA and AoS
for file_path in file_paths_soa:
    process_csv_file(file_path, is_soa=True)
    process_csv_file2(file_path)

for file_path in file_paths_aos:
    process_csv_file(file_path, is_soa=False)
    process_csv_file2(file_path)

# Prepare data for plotting
mnk_values_soa = list(speedup_dict_soa.keys())
speedups_soa = [speedup_dict_soa[mnk] for mnk in mnk_values_soa]

mnk_values_aos = list(speedup_dict_aos.keys())
speedups_aos = [speedup_dict_aos[mnk] for mnk in mnk_values_aos]

# Set Seaborn style
sns.set(style="whitegrid")

# Bar width
bar_width = 0.35

# Define x positions for SoA and AoS
x_positions_soa = [i + bar_width / 2 for i in range(len(mnk_values_soa))]
x_positions_aos = [i - bar_width / 2 for i in range(len(mnk_values_aos))]

# Create a bar plot
plt.figure(figsize=(6, 4.2))

# Bar plot for SoA (orange bars)
so_a_bars = plt.bar(x_positions_soa, speedups_soa, width=bar_width, color='orange', label="SoA")

# Bar plot for AoS (blue bars)
a_o_s_bars = plt.bar(x_positions_aos, speedups_aos, width=bar_width, color='b', label="AoS")

# Set x-ticks to the middle of the grouped bars
plt.xticks(range(len(mnk_values_soa)), [f'M={mnk[0]}\nN={mnk[1]}\nK={mnk[2]}' for mnk in mnk_values_soa])

# Title and labels
plt.title('AoS vs. SoA Complex GEMM')
#plt.xlabel('M x N x K')
plt.ylabel('Speedup Over Naive GEMM')
y_ticks = range(0, 10)
y_tick_labels = [str(i) for i in y_ticks]
plt.yticks(y_ticks, y_tick_labels)
plt.grid(True, linestyle='--', linewidth=0.7)
# Add legend at the bottom
plt.legend(handles=[a_o_s_bars[0], so_a_bars[0]], labels=["AoS", "SoA"], loc='lower center', bbox_to_anchor=(0.5, -0.45), ncol=2)
# Save the plot as PNG and PDF
plt.tight_layout()
plt.savefig('speedup_plot.png', dpi=600)
plt.savefig('speedup_plot.pdf')
