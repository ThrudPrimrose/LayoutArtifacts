import matplotlib.pyplot as plt
import numpy as np

def parse_file(file_path):
    data = {
        "aligned, 4 GPUs": [],
        "aligned, 2 GPUs": [],
        "aligned, 1 GPUs": [],
        "unaligned, 4 GPUs": [],
        "unaligned, 2 GPUs": [],
        "unaligned, 1 GPUs": [],
    }

    with open(file_path, 'r') as file:
        key = None
        val = None
        for line in file:
            # Skip empty lines or lines that don't contain useful data
            if not line.strip():
                continue

            # Process the line containing the data
            parts = line.split()
            if len(parts) == 6 or len(parts) == 8 or len(parts) == 4:
                if parts[0] == "Stencil" or parts[0] == "Unaligned.":
                    alignment = parts[1] if parts[0] == "Stencil" else parts[0][:-1].lower()
                    num_gpus = int(parts[7]) if parts[0] == "Stencil" else int(parts[3])
                    key = f"{alignment}, {num_gpus} GPUs"
                if parts[0] == "Multi-GPU":
                    val = float(parts[-2])

                if key is not None and val is not None:
                    data[key].append(val)
                    key = None
                    val = None

    return data


def plot_data(iterations):
    # Prepare the data for plotting
    labels = [
        "aligned, 1 GPUs", "aligned, 2 GPUs", "aligned, 4 GPUs",
        "unaligned, 1 GPUs", "unaligned, 2 GPUs", "unaligned, 4 GPUs"
    ]

    # Set up the plot
    x = [1, 2, 4]
    num_iterations = len(iterations)

    # Create the plot figure
    fig, ax = plt.subplots(figsize=(10, 6))

    bar_width = 0.35
    # Loop through each configuration and calculate min, max, and mean
    for i, num_gpus in enumerate([1, 2, 4]):
        aligned_key = f"aligned, {num_gpus} GPUs"
        unaligned_key = f"unaligned, {num_gpus} GPUs"

        # Collect all the execution times for each configuration across iterations
        aligned_times = [iteration for iteration in iterations[aligned_key]]
        unaligned_times = [iteration for iteration in iterations[unaligned_key]]

        # Compute mean, min, and max
        aligned_mean = np.mean(aligned_times)
        aligned_min = np.min(aligned_times)
        aligned_max = np.max(aligned_times)

        unaligned_mean = np.mean(unaligned_times)
        unaligned_min = np.min(unaligned_times)
        unaligned_max = np.max(unaligned_times)

        # Add unaligned bar with error bars
        ax.bar(x[i] - bar_width/2, unaligned_mean, width=bar_width, label=f"Unaligned Stencil" if i == 0 else "", color='salmon')
        ax.errorbar(x[i] - bar_width/2, unaligned_mean, yerr=[[unaligned_mean - unaligned_min], [unaligned_max - unaligned_mean]], color='black', capsize=5)

        # Add aligned bar with error bars
        ax.bar(x[i] + bar_width/2, aligned_mean, width=bar_width, label=f"Stencil w. Dimensions Aligned to Page-Size (4KB)" if i == 0 else "", color='skyblue')
        ax.errorbar(x[i] + bar_width/2, aligned_mean, yerr=[[aligned_mean - aligned_min], [aligned_max - aligned_mean]], color='black', capsize=5)

        if num_gpus == 1:
            base_aligned = aligned_mean
            base_unaligned = unaligned_mean
        else:
            aligned_speedup = base_aligned / aligned_mean
            unaligned_speedup = base_unaligned / unaligned_mean

            # Display speedups on the plot
            ax.text(x[i] - bar_width/2, unaligned_mean + 100, f'x{unaligned_speedup:.2f}', ha='center', va='bottom', fontsize=11)
            ax.text(x[i] + bar_width/2, aligned_mean + 100, f'x{aligned_speedup:.2f}', ha='center', va='bottom', fontsize=11)

        ax.legend()

    # Customize the plot
    ax.set_xlabel('#GPUs')
    ax.set_ylabel('Execution Time (ms)')
    ax.set_title('Multi-GPU Kernel Execution Time')
    ax.set_xticks([1, 2 , 4])
    ax.set_xticklabels(["1 GPUs", "2 GPUs", "4 GPUs"])
    ax.set_yticks(np.arange(0, 10001, 500), [str(s) for s in np.arange(0, 10001, 500)])
    ax.legend(loc='upper center', bbox_to_anchor=(0.5, -0.1), ncol=3)

    ax.grid(True, which="both", linestyle="--")

    # Show the plot
    plt.tight_layout()
    plt.show()
    plt.savefig("multi_gpu_plot.png")

# File path to the data file
file_path = 'out.txt'

# Parse the file and plot the results
iterations_data = parse_file(file_path)


plot_data(iterations_data)
