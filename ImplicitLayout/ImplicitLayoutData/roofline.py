import json
import numpy as np
import matplotlib.pyplot as plt

def read_json(filename):
    with open(filename, 'r') as f:
        data = json.load(f)
    return data

def plot_roofline(device_name, device_data):
    plt.figure(figsize=(8, 6))

    for compute_type, specs in device_data.items():
        mem_bw = specs["memory_bandwidth"]
        flops = specs["flops"]

        if not mem_bw:
            continue

        ops = ["8-bit", "16-bit", "32-bit", "64-bit"]
        flops_values = [flops[op] for op in ops]

        # Operational intensities
        intensities = np.logspace(-2, 3, 100)  # FLOP per byte

        # Roofline curve
        peak_performance = max(flops_values)
        roofline = np.minimum(peak_performance, intensities * mem_bw)

        plt.plot(intensities, roofline, label=f"{compute_type} ({device_name})")

        # Scatter points for different precisions
        for op, flop in zip(ops, flops_values):
            intensity = flop / mem_bw
            plt.scatter(intensity, flop, label=f"{op} ({compute_type})")

    plt.xscale('log')
    plt.yscale('log')
    plt.xlabel("Operational Intensity (FLOP per byte)")
    plt.ylabel("Performance (FLOP/s)")
    plt.title(f"Roofline Model for {device_name}")
    plt.legend()
    plt.grid(True, which='both', linestyle='--', linewidth=0.5)
    plt.show()
    plt.savefig("roof.png")

if __name__ == "__main__":
    filename = "mi300a.json"
    data = read_json(filename)

    for device, device_data in data.items():
        plot_roofline(device, device_data)
