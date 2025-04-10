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
    cmd = f"python complex_gemm.py --layout {layout} --m {m} --n {n} --k {k}"

    # Create a temporary SLURM script with this configuration
    script_content = f"""#!/bin/sh

#SBATCH --job-name="{layout.lower()}_gemm_m{m}_n{n}_k{k}"
#SBATCH --time=18:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output={layout.lower()}_gemm_m{m}_n{n}_k{k}.%j.o
#SBATCH --error={layout.lower()}_gemm_m{m}_n{n}_k{k}.%j.e

source /capstor/scratch/cscs/ybudanaz/.def/bin/activate
spack load hip@6.2.1
spack load cmake@3.30.5
spack load hipsparse@6.2.1
spack load hipblas@6.2.1
spack load rocm-cmake@6.2.1
spack load rocm-core@6.2.1
spack load rocsparse@6.2.1
spack load rocblas@6.2.1
spack load rocthrust@6.2.1
spack load rccl@6.2.1
spack load mpich@4.2.3
spack load rocprim@6.2.1
spack load rocminfo@6.2.1

alias c++=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang++
alias cc=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang

export MPICH_GPU_SUPPORT_ENABLED=1
export MPICH_CXX=hipcc

{cmd}
"""
    temp_script = f"temp_{layout.lower()}_gemm_m{m}_n{n}_k{k}.sh"

    # Write the temporary script
    with open(temp_script, "w") as f:
        f.write(script_content)

    # Submit the job
    subprocess.run(["sbatch", temp_script])