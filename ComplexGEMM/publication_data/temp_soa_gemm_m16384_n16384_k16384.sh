#!/bin/sh

#SBATCH --job-name="soa_gemm_m16384_n16384_k16384"
#SBATCH --time=18:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=mi300
#SBATCH --output=soa_gemm_m16384_n16384_k16384.%j.o
#SBATCH --error=soa_gemm_m16384_n16384_k16384.%j.e

source /capstor/scratch/cscs/ybudanaz/beverinenv/bin/activate
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

export CPLUS_INCLUDE_PATH=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include:$CPLUS_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocprim-6.2.1-lguqn2d2gznl7t5n7h5w3ndneigfr2zg/include:$CPLUS_INCLUDE_PATH

alias c++=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang++
alias cc=/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/amdclang

export MPICH_GPU_SUPPORT_ENABLED=1
export MPICH_CXX=hipcc

/capstor/scratch/cscs/ybudanaz/beverinenv/bin/python complex_gemm.py --layout SoA --m 16384 --n 16384 --k 16384 

