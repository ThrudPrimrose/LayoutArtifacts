import subprocess
from itertools import product

# Layouts and matrix sizes
layouts = ["AoS", "SoA"]
sizes = [(16384, 16384, 16384)]

# Base SLURM script filename
slurm_script = "submit_complex_gemm.sh"

# Loop over all combinations of layout and sizes
for layout, (m, n, k) in product(layouts, sizes):
    # Build the command to run in the SLURM script
    cmd = f"python complex_gemm.py --layout {layout} --m {m} --n {n} --k {k}"

    # Create a temporary SLURM script with this configuration
    script_content = f"""#!/bin/sh

#SBATCH --job-name="{layout.lower()}_gemm_m{m}_n{n}_k{k}"
#SBATCH --time=4:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=long
#SBATCH --output={layout.lower()}_gemm_m{m}_n{n}_k{k}.%j.o
#SBATCH --error={layout.lower()}_gemm_m{m}_n{n}_k{k}.%j.e

source /scratch/ybudanaz/.spackpy/bin/activate
spack load gcc cuda

{cmd}
"""
    temp_script = f"temp_{layout.lower()}_gemm_m{m}_n{n}_k{k}.sh"

    # Write the temporary script
    with open(temp_script, "w") as f:
        f.write(script_content)

    # Submit the job
    subprocess.run(["sbatch", temp_script])