#!/bin/sh

#SBATCH --job-name="usu"
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --partition=mi300
#SBATCH --output=usu.%j.o
#SBATCH --error=usu.%j.e
#SBATCH --mem=256GB

spack load
source  /capstor/scratch/cscs/ybudanaz/.def/bin/activate
spack load hip@6.2.1
spack load cmake@3.30.5

alias c++=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang++
alias cc=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang

echo "Launching 4 jobs on different GPUs..."
export PYTORCH_HIP_ALLOC_CONF=expandable_segments:True

#rm *.txt
#rm -rf .dacecache/


export CUDA_VISIBLE_DEVICES=0; srun -n 1 -o output.%J.v3.log --exact bash -c ' {
python3.11 unstructured_stencil_3d_u_s_u_v2_dace.py 130
}' &

export CUDA_VISIBLE_DEVICES=1; srun -n 1 -o output.%J.v3.log --exact bash -c ' {
python3.11 unstructured_stencil_3d_u_s_u_v2_dace_v2.py 130
}' &

echo "Job steps submitted..."
sleep 1
squeue -u `id -un` -s

wait

