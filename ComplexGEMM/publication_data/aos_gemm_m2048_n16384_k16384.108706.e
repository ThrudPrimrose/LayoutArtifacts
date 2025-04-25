/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cpu/complex_gemm_aos_AoS_2048_16384_16384.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_aos_67". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 324, in <module>
    c1 = sdfg1.compile()
         ^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building HIP object CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:511:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  511 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:77: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                       ~~~~~~^~~~~~~~~
      |                                                                             complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:117: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                               ~~~~~~^~~~~~~~~
      |                                                                                                                     complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:92:151: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
   92 | __global__ void __launch_bounds__(32) complex_gemm_aos_67_0_0_0(const dace::complex64 * __restrict__ A, const dace::complex64 * __restrict__ B, dace::complex64 * __restrict__ C, int K, int M, int N) {
      |                                                                                                                                                 ~~~~~~^~~~~~~~~
      |                                                                                                                                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: use of undeclared identifier '__tmp2'; did you mean '__exp2'?
  101 |                             dace::complex64 __tmp2;
      |                                             ^~~~~~
      |                                             __exp2
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:44: error: expected ';' after expression
  101 |                             dace::complex64 __tmp2;
      |                                            ^
      |                                            ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:35: error: no member named 'complex64' in namespace 'dace'
  101 |                             dace::complex64 __tmp2;
      |                             ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:101:45: error: reference to __host__ function '__exp2' in __global__ function
  101 |                             dace::complex64 __tmp2;
      |                                             ^
/usr/include/bits/mathcalls.h:130:1: note: '__exp2' declared here
  130 | __MATHCALL (exp2,, (_Mdouble_ __x));
      | ^
/usr/include/math.h:273:3: note: expanded from macro '__MATHCALL'
  273 |   __MATHDECL (_Mdouble_,function,suffix, args)
      |   ^
/usr/include/math.h:276:22: note: expanded from macro '__MATHDECL'
  276 |   __MATHDECL_1(type, __CONCAT(__,function),suffix, args)
      |                      ^
/usr/include/sys/cdefs.h:105:23: note: expanded from macro '__CONCAT'
  105 | #define __CONCAT(x,y)   x ## y
      |                         ^
<scratch space>:72:1: note: expanded from here
   72 | __exp2
      | ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:35: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  102 |                             dace::complex64 __tmp3 = 0;
      |                             ~~~~~~^~~~~~~~~
      |                                   complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:102:45: error: no viable conversion from 'int' to 'dace::complexJ'
  102 |                             dace::complex64 __tmp3 = 0;
      |                                             ^        ~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const complexJ &' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: candidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'complexJ &&' for 1st argument
   34 |     struct complexJ
      |            ^~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:37:28: note: explicit constructor is not a candidate
   37 |         explicit DACE_HDFI complexJ(int v = 1) : val(v) {}
      |                            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:49: error: use of undeclared identifier '__in2'; did you mean '__in1'?
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                 ^~~~~
      |                                                 __in1
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:104:49: note: '__in1' declared here
  104 |                                 dace::complex64 __in1 = A[((K * i) + k)];
      |                                                 ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:48: error: expected ';' after expression
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                                ^
      |                                                ;
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:105:39: error: no member named 'complex64' in namespace 'dace'
  105 |                                 dace::complex64 __in2 = B[((N * k) + j)];
      |                                 ~~~~~~^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:106:39: error: no type named 'complex64' in namespace 'dace'; did you mean 'complexJ'?
  106 |                                 dace::complex64 __out;
      |                                 ~~~~~~^~~~~~~~~
      |                                       complexJ
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/complex.h:34:12: note: 'complexJ' declared here
   34 |     struct complexJ
      |            ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:402:3: error: function cannot return function type 'int (int)'
  402 |   T real() const volatile { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:110:48: note: in instantiation of template class 'thrust::complex<int (int)>' requested here
  110 |                                 __out = (__in1 * __in2);
      |                                                ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:19:
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:407:3: error: function cannot return function type 'int (int)'
  407 |   T imag() const volatile { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:412:3: error: function cannot return function type 'int (int)'
  412 |   T real() const { return data.x; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:417:3: error: function cannot return function type 'int (int)'
  417 |   T imag() const { return data.y; }
      |   ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include/thrust/complex.h:464:39: error: invalid application of 'sizeof' to a function type
  464 |   typename detail::complex_storage<T, sizeof(T) * 2>::type data;
      |                                       ^~~~~~~~~
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated when compiling for gfx942.
gmake[2]: *** [CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/build.make:89: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_aos_AoS_2048_16384_16384/src/cuda/hip/complex_gemm_aos_AoS_2048_16384_16384_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_aos_AoS_2048_16384_16384.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

