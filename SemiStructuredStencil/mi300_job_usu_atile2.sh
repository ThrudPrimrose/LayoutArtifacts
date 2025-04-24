#!/bin/sh

#SBATCH --job-name="gpu_usu_atile2"
#SBATCH --time=12:00:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output=gpu_usu_atile2.%j.o
#SBATCH --error=gpu_usu_atile2.%j.e
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

echo "Launching 3 jobs on different GPUs..."
export PYTORCH_HIP_ALLOC_CONF=expandable_segments:False

#rm *.txt
#rm -rf .dacecache/
export CUDA_VISIBLE_DEVICES=0; export HIP_VISIBLE_DEVICES=0; srun -n 1 --exclusive --nodes=1 -o output.%J.v3.log bash -c ' {
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile.py 514
}' &
export CUDA_VISIBLE_DEVICES=1; export HIP_VISIBLE_DEVICES=1; srun -n 1 --exclusive --nodes=1 -o output.%J.v3.log bash -c ' {
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
/capstor/scratch/cscs/ybudanaz/.def/bin/python unstructured_stencil_3d_u_s_u_v2_dace_auto_tile_transposed.py 514
}' &



echo "Job steps submitted..."
sleep 1
squeue -u `id -un` -s

wait

