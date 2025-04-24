#!/bin/sh

#SBATCH --job-name="usu_big1"
#SBATCH --time=24:00:00
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output=usu_big1.%j.o
#SBATCH --error=usu_big1.%j.e
#SBATCH --mem=256GB

spack load
source  /capstor/scratch/cscs/ybudanaz/.def/bin/activate
spack load hip@6.2.1
spack load cmake@3.30.5

alias c++=g++-12
alias cc=gcc-12

echo "Launching 4 jobs on different GPUs..."
export PYTORCH_HIP_ALLOC_CONF=expandable_segments:False

#rm *.txt
#rm -rf .dacecache/


export CUDA_VISIBLE_DEVICES=0; srun -N 1 --ntasks=1 --exclusive --ntasks-per-node=1 -o output.%J.v3.log --exact bash -c ' {
python3.11 unstructured_stencil_3d_u_s_u_v2_dace_v2_cpu.py 514
}' &

export CUDA_VISIBLE_DEVICES=1; srun -N 1 --ntasks=1 --exclusive --ntasks-per-node=1 -o output.%J.v3.log --exact bash -c ' {
python3.11 unstructured_stencil_3d_u_s_u_v2_dace_v2_cpu.py 1026
}' &

export CUDA_VISIBLE_DEVICES=2; srun -N 1 --ntasks=1 --exclusive --ntasks-per-node=1 -o output.%J.v3.log --exact bash -c ' {
python3.11 unstructured_stencil_3d_u_s_u_v2_dace_v2_cpu.py 1282
}' &

export CUDA_VISIBLE_DEVICES=3; srun -N 1 --ntasks=1 --exclusive --ntasks-per-node=1 -o output.%J.v3.log --exact bash -c ' {
python3.11 unstructured_stencil_3d_u_s_u_v2_dace_v2_cpu.py 1514
}' &

echo "Job steps submitted..."
sleep 1
squeue -u `id -un` -s

wait

