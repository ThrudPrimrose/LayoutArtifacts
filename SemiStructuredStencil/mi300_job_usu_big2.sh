#!/bin/sh

#SBATCH --job-name="usu_big2"
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --partition=mi300
#SBATCH --output=usu_big2.%j.o
#SBATCH --error=usu_big2.%j.e
#SBATCH --mem=256GB

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
spack load mpich@4.2.3/dfsmhyo
spack load rocprim@6.2.1
spack load rocminfo@6.2.1


alias c++=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang++
alias cc=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang

echo "Launching 2 jobs on different GPUs..."
export PYTORCH_HIP_ALLOC_CONF=expandable_segments:False

#rm *.txt
#rm -rf .dacecache/

export CUDA_VISIBLE_DEVICES=0; srun -n 1 -o output.%J.v3.log --exact bash -c ' {
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace.py 130 258
}' &

export CUDA_VISIBLE_DEVICES=1; srun -n 1 -o output.%J.v3.log --exact bash -c ' {
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace.py 1026
}' &

export CUDA_VISIBLE_DEVICES=2; srun -n 1 -o output.%J.v3.log --exact bash -c ' {
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace.py 1282
}' &

export CUDA_VISIBLE_DEVICES=3; srun -n 1 -o output.%J.v3.log --exact bash -c ' {
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace.py  514
}' &

echo "Job steps submitted..."
sleep 1
squeue -u `id -un` -s

wait

