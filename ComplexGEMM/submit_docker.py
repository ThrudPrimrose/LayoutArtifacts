import subprocess
from itertools import product

# Layouts and matrix sizes
layouts = ["AoS", "SoA"]
sizes = [(16384, 16384, 16384), (2048, 12288, 12288), (4096, 4096, 4096), (128, 32768, 512)]

# Base SLURM script filename
slurm_script = "submit_complex_gemm.sh"

# Loop over all combinations of layout and sizes
for layout, (m, n, k) in product(layouts, sizes):
    # Build the command to run in the SLURM script
    cmd = f"python3.10 complex_gemm.py --layout {layout} --m {m} --n {n} --k {k}\n"

    # Create a temporary SLURM script with this configuration
    script_content = f"""#!/bin/sh

#SBATCH --job-name="{layout.lower()}_gemm_m{m}_n{n}_k{k}"
#SBATCH --time=18:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output={layout.lower()}_gemm_m{m}_n{n}_k{k}.%j.o
#SBATCH --error={layout.lower()}_gemm_m{m}_n{n}_k{k}.%j.e

{cmd*50} # Repeat the command 50 times to circumvent abortion when illegal tiling configurations are encountered
"""
    temp_script = f"temp_{layout.lower()}_gemm_m{m}_n{n}_k{k}.sh"

    # Write the temporary script
    with open(temp_script, "w") as f:
        f.write(script_content)
