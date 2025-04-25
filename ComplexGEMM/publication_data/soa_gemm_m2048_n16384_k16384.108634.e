/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/passes/simplify.py:117: UserWarning: LiftStructViews is not being applied due to incompatibility with experimental control flow blocks. If the SDFG does not contain experimental blocks, ensure the top level SDFG does not have `SDFG.using_explicit_control_flow` set to True. If LiftStructViews is compatible with experimental blocks, please annotate it with the class decorator `@dace.transformation.explicit_cf_compatible`. see `https://github.com/spcl/dace/wiki/Experimental-Control-Flow-Blocks` for more information.
  warnings.warn(p.__class__.__name__ + ' is not being applied due to incompatibility with ' +
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1963: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2545, in __call__
    * Auto-parallelization (loop-to-map)
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2469, in compile
    def __call__(self, *args, **kwargs):
                         ^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:24:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   24 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:27:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   27 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:29:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   29 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:32:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   32 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:40:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   40 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
8 warnings generated.
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace, preprocessed source, and associated run script.
Stack dump:
0.	Program arguments: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18 -cc1 -triple amdgcn-amd-amdhsa -aux-triple x86_64-unknown-linux-gnu -emit-obj -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp -mrelocation-model pic -pic-level 2 -fhalf-no-semantic-interposition -mframe-pointer=none -fno-rounding-math -mconstructor-aliases -aux-target-cpu x86-64 -fcuda-is-device -mllvm -amdgpu-internalize-symbols -fcuda-allow-variadic-functions -fvisibility=hidden -fapply-global-visibility-to-externs -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/hip.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ocml.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ockl.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_daz_opt_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_unsafe_math_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_finite_only_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_correctly_rounded_sqrt_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_wavefrontsize64_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_isa_version_942.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_abi_version_500.bc -target-cpu gfx942 -debug-info-kind=constructor -dwarf-version=5 -debugger-tuning=gdb -mllvm -amdgpu-spill-cfi-saved-regs -gheterogeneous-dwarf -fdebug-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build -resource-dir /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18 -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers -idirafter /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/hip-6.2.1-dnxqftoeqt7lshn7es5sf7vnjy2n65ep/include -include __clang_hip_runtime_wrapper.h -D DACE_BINARY_DIR=\"/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build\" -D USE_PROF_API=1 -D WITH_CUDA -D WITH_HIP -D __HIP_PLATFORM_AMD__=1 -D __HIP_ROCclr__=1 -D complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_EXPORTS -I /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include -D NDEBUG -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocprim-6.2.1-lguqn2d2gznl7t5n7h5w3ndneigfr2zg/include -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include -cxx-isystem . -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -O2 -std=gnu++17 -fdeprecated-macro -fno-autolink -ferror-limit 19 -fhip-new-launch-api -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -vectorize-loops -vectorize-slp -cuid=fda6ecb05f07ac5c -fcuda-allow-variadic-functions -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o /tmp/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda-gfx942-fa875f.o -x hip /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp
1.	/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:509:53: current parser token '{'
2.	/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:505:1: parsing namespace 'dace'
3.	/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:507:5: parsing namespace 'dace::math'
 #0 0x000000000252242b llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x252242b)
 #1 0x000000000251f95b SignalHandler(int) Signals.cpp:0:0
 #2 0x0000150e8d14d910 __restore_rt (/lib64/libpthread.so.0+0x16910)
 #3 0x00000000027443b9 clang::SrcMgr::LineOffsetMapping::get(llvm::MemoryBufferRef, llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator, 4096ul, 4096ul, 128ul>&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x27443b9)
 #4 0x0000000002745b45 clang::SourceManager::getLineNumber(clang::FileID, unsigned int, bool*) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2745b45)
 #5 0x000000000274819b clang::SourceManager::getPresumedLoc(clang::SourceLocation, bool) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x274819b)
 #6 0x000000000273bfce clang::FullSourceLoc::getPresumedLoc(bool) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x273bfce)
 #7 0x00000000030b7316 clang::DiagnosticRenderer::emitIncludeStackRecursively(clang::FullSourceLoc) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30b7316)
 #8 0x00000000030b734e clang::DiagnosticRenderer::emitIncludeStackRecursively(clang::FullSourceLoc) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30b734e)
 #9 0x00000000030b880b clang::DiagnosticRenderer::emitDiagnostic(clang::FullSourceLoc, clang::DiagnosticsEngine::Level, llvm::StringRef, llvm::ArrayRef<clang::CharSourceRange>, llvm::ArrayRef<clang::FixItHint>, llvm::PointerUnion<clang::Diagnostic const*, clang::StoredDiagnostic const*>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30b880b)
#10 0x000000000306d89e clang::TextDiagnosticPrinter::HandleDiagnostic(clang::DiagnosticsEngine::Level, clang::Diagnostic const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x306d89e)
#11 0x000000000272b4cf clang::DiagnosticIDs::ProcessDiag(clang::DiagnosticsEngine&) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x272b4cf)
#12 0x00000000027233db clang::DiagnosticsEngine::EmitCurrentDiagnostic(bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x27233db)
#13 0x000000000472c0a3 clang::Sema::EmitCurrentDiagnostic(unsigned int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x472c0a3)
#14 0x000000000472ca63 clang::Sema::SemaDiagnosticBuilder::~SemaDiagnosticBuilder() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x472ca63)
#15 0x0000000004712019 (anonymous namespace)::ParsedAttrInfoAcquireCapability::diagAppertainsToDecl(clang::Sema&, clang::ParsedAttr const&, clang::Decl const*) const ParsedAttr.cpp:0:0
#16 0x000000000475364e clang::Sema::checkCommonAttributeFeatures(clang::Decl const*, clang::ParsedAttr const&, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x475364e)
#17 0x000000000497a540 ProcessDeclAttribute(clang::Sema&, clang::Scope*, clang::Decl*, clang::ParsedAttr const&, clang::Sema::ProcessDeclAttributeOptions const&) SemaDeclAttr.cpp:0:0
#18 0x000000000497da48 clang::Sema::ProcessDeclAttributes(clang::Scope*, clang::Decl*, clang::Declarator const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x497da48)
#19 0x000000000490d5be clang::Sema::ActOnVariableDeclarator(clang::Scope*, clang::Declarator&, clang::DeclContext*, clang::TypeSourceInfo*, clang::LookupResult&, llvm::MutableArrayRef<clang::TemplateParameterList*>, bool&, llvm::ArrayRef<clang::BindingDecl*>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x490d5be)
#20 0x0000000004924f11 clang::Sema::HandleDeclarator(clang::Scope*, clang::Declarator&, llvm::MutableArrayRef<clang::TemplateParameterList*>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4924f11)
#21 0x0000000004925613 clang::Sema::ActOnDeclarator(clang::Scope*, clang::Declarator&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4925613)
#22 0x00000000045fe38d clang::Parser::ParseDeclarationAfterDeclaratorAndAttributes(clang::Declarator&, clang::Parser::ParsedTemplateInfo const&, clang::Parser::ForRangeInit*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45fe38d)
#23 0x000000000460f25f clang::Parser::ParseDeclGroup(clang::ParsingDeclSpec&, clang::DeclaratorContext, clang::ParsedAttributes&, clang::SourceLocation*, clang::Parser::ForRangeInit*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x460f25f)
#24 0x00000000045d48db clang::Parser::ParseDeclarationOrFunctionDefinition(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*, clang::AccessSpecifier) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d48db)
#25 0x00000000045dbb03 clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbb03)
#26 0x00000000046287c4 clang::Parser::ParseInnerNamespace(llvm::SmallVector<clang::Parser::InnerNamespaceInfo, 4u> const&, unsigned int, clang::SourceLocation&, clang::ParsedAttributes&, clang::BalancedDelimiterTracker&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x46287c4)
#27 0x000000000462e37e clang::Parser::ParseNamespace(clang::DeclaratorContext, clang::SourceLocation&, clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x462e37e)
#28 0x0000000004612995 clang::Parser::ParseDeclaration(clang::DeclaratorContext, clang::SourceLocation&, clang::ParsedAttributes&, clang::ParsedAttributes&, clang::SourceLocation*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4612995)
#29 0x00000000045dbc8c clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbc8c)
#30 0x00000000046287c4 clang::Parser::ParseInnerNamespace(llvm::SmallVector<clang::Parser::InnerNamespaceInfo, 4u> const&, unsigned int, clang::SourceLocation&, clang::ParsedAttributes&, clang::BalancedDelimiterTracker&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x46287c4)
#31 0x000000000462e37e clang::Parser::ParseNamespace(clang::DeclaratorContext, clang::SourceLocation&, clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x462e37e)
#32 0x0000000004612995 clang::Parser::ParseDeclaration(clang::DeclaratorContext, clang::SourceLocation&, clang::ParsedAttributes&, clang::ParsedAttributes&, clang::SourceLocation*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4612995)
#33 0x00000000045dbc8c clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbc8c)
#34 0x00000000045dd435 clang::Parser::ParseTopLevelDecl(clang::OpaquePtr<clang::DeclGroupRef>&, clang::Sema::ModuleImportState&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dd435)
#35 0x00000000045ce5da clang::ParseAST(clang::Sema&, bool, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45ce5da)
#36 0x000000000300a679 clang::FrontendAction::Execute() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x300a679)
#37 0x0000000002f8b68b clang::CompilerInstance::ExecuteAction(clang::FrontendAction&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2f8b68b)
#38 0x00000000030cf782 clang::ExecuteCompilerInvocation(clang::CompilerInstance*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30cf782)
#39 0x0000000000c182a6 cc1_main(llvm::ArrayRef<char const*>, char const*, void*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc182a6)
#40 0x0000000000c10b18 ExecuteCC1Tool(llvm::SmallVectorImpl<char const*>&, llvm::ToolContext const&) driver.cpp:0:0
#41 0x0000000000c146dd clang_main(int, char**, llvm::ToolContext const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc146dd)
#42 0x0000000000b50983 main (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xb50983)
#43 0x0000150e8cb4524d __libc_start_main (/lib64/libc.so.6+0x3524d)
#44 0x0000000000c0f9ba _start /home/abuild/rpmbuild/BUILD/glibc-2.31/csu/../sysdeps/x86_64/start.S:122:0
clang++: error: unable to execute command: Bus error (core dumped)
clang++: error: clang frontend command failed due to signal (use -v to see invocation)
AMD clang version 18.0.0git
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin
clang++: note: diagnostic msg: Error generating preprocessed source(s).
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x5633dc94e070) on address 0x14f77e200000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 36: 85563 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x56534ce98be0) on address 0x149060600000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 37: 86612 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x1492536437e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 193, in __init__
    self._init = lib.get_symbol('__dace_init_{}'.format(sdfg.name))
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 49, in get_symbol
    raise KeyError(f'Function {name} not found in library {os.path.basename(self._library_filename)}')
KeyError: 'Function __dace_init_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0 not found in library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.so'
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 121, in _tile_gpu
    non_transformed_time = auto_tile_util.run_and_measure_time(
                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x563adbb98c80) on address 0x148634e02000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 46: 100448 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x558d6f47f720) on address 0x149752400000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 47: 106454 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x1477f964b7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x56388556be50) on address 0x1442c3408000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 50: 123053 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x558b43e5ed70) on address 0x14a780000000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 51: 124232 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55a3c9c1e660) on address 0x145856600000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 53: 136098 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x14654be4b7e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:509:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  509 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:68:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   68 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace, preprocessed source, and associated run script.
Stack dump:
0.	Program arguments: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18 -cc1 -triple amdgcn-amd-amdhsa -aux-triple x86_64-unknown-linux-gnu -emit-obj -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp -mrelocation-model pic -pic-level 2 -fhalf-no-semantic-interposition -mframe-pointer=none -fno-rounding-math -mconstructor-aliases -aux-target-cpu x86-64 -fcuda-is-device -mllvm -amdgpu-internalize-symbols -fcuda-allow-variadic-functions -fvisibility=hidden -fapply-global-visibility-to-externs -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/hip.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ocml.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/ockl.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_daz_opt_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_unsafe_math_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_finite_only_off.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_correctly_rounded_sqrt_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_wavefrontsize64_on.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_isa_version_942.bc -mlink-builtin-bitcode /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/amdgcn/bitcode/oclc_abi_version_500.bc -target-cpu gfx942 -debug-info-kind=constructor -dwarf-version=5 -debugger-tuning=gdb -mllvm -amdgpu-spill-cfi-saved-regs -gheterogeneous-dwarf -fdebug-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build -resource-dir /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18 -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers -idirafter /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/hip-6.2.1-dnxqftoeqt7lshn7es5sf7vnjy2n65ep/include -include __clang_hip_runtime_wrapper.h -D DACE_BINARY_DIR=\"/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build\" -D USE_PROF_API=1 -D WITH_CUDA -D WITH_HIP -D __HIP_PLATFORM_AMD__=1 -D __HIP_ROCclr__=1 -D complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_EXPORTS -I /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include -D NDEBUG -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocprim-6.2.1-lguqn2d2gznl7t5n7h5w3ndneigfr2zg/include -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include -cxx-isystem . -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -O2 -std=gnu++17 -fdeprecated-macro -fno-autolink -ferror-limit 19 -fhip-new-launch-api -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -vectorize-loops -vectorize-slp -cuid=6d5dcd95384c5d52 -fcuda-allow-variadic-functions -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o /tmp/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda-gfx942-ac508c.o -x hip /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp
1.	/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:242:95 <Spelling=/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:18:27>: current parser token 'extern'
2.	/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:92:119: LLVM IR generation of declaration 'GPU_DeviceMap_0_0_30'
3.	/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp:92:119: Generating code for declaration 'GPU_DeviceMap_0_0_30'
 #0 0x000000000252242b llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x252242b)
 #1 0x000000000251f95b SignalHandler(int) Signals.cpp:0:0
 #2 0x0000150ef5193910 __restore_rt (/lib64/libpthread.so.0+0x16910)
 #3 0x000000000247f92d llvm::MD5::body(llvm::ArrayRef<unsigned char>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x247f92d)
 #4 0x000000000248119f llvm::MD5::hash(llvm::ArrayRef<unsigned char>) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x248119f)
 #5 0x0000000002787b8b clang::CodeGen::CGDebugInfo::computeChecksum(clang::FileID, llvm::SmallString<64u>&) const (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2787b8b)
 #6 0x000000000278976d clang::CodeGen::CGDebugInfo::getOrCreateFile(clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x278976d)
 #7 0x00000000027c742d clang::CodeGen::CGDebugInfo::emitFunctionStart(clang::GlobalDecl, clang::SourceLocation, clang::SourceLocation, clang::QualType, llvm::Function*, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x27c742d)
 #8 0x00000000028744b1 clang::CodeGen::CodeGenFunction::StartFunction(clang::GlobalDecl, clang::QualType, llvm::Function*, clang::CodeGen::CGFunctionInfo const&, clang::CodeGen::FunctionArgList const&, clang::SourceLocation, clang::SourceLocation) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28744b1)
 #9 0x0000000002878a00 clang::CodeGen::CodeGenFunction::GenerateCode(clang::GlobalDecl, llvm::Function*, clang::CodeGen::CGFunctionInfo const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2878a00)
#10 0x00000000028ca51a clang::CodeGen::CodeGenModule::EmitGlobalFunctionDefinition(clang::GlobalDecl, llvm::GlobalValue*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28ca51a)
#11 0x00000000028c5f94 clang::CodeGen::CodeGenModule::EmitGlobalDefinition(clang::GlobalDecl, llvm::GlobalValue*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28c5f94)
#12 0x00000000028c67f3 clang::CodeGen::CodeGenModule::EmitGlobal(clang::GlobalDecl) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x28c67f3)
#13 0x00000000028cda87 clang::CodeGen::CodeGenModule::EmitTopLevelDecl(clang::Decl*) (.part.0) CodeGenModule.cpp:0:0
#14 0x0000000002d54c70 (anonymous namespace)::CodeGeneratorImpl::HandleTopLevelDecl(clang::DeclGroupRef) ModuleBuilder.cpp:0:0
#15 0x0000000002d451b5 clang::BackendConsumer::HandleTopLevelDecl(clang::DeclGroupRef) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2d451b5)
#16 0x00000000045ce5c4 clang::ParseAST(clang::Sema&, bool, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45ce5c4)
#17 0x000000000300a679 clang::FrontendAction::Execute() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x300a679)
#18 0x0000000002f8b68b clang::CompilerInstance::ExecuteAction(clang::FrontendAction&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2f8b68b)
#19 0x00000000030cf782 clang::ExecuteCompilerInvocation(clang::CompilerInstance*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30cf782)
#20 0x0000000000c182a6 cc1_main(llvm::ArrayRef<char const*>, char const*, void*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc182a6)
#21 0x0000000000c10b18 ExecuteCC1Tool(llvm::SmallVectorImpl<char const*>&, llvm::ToolContext const&) driver.cpp:0:0
#22 0x0000000000c146dd clang_main(int, char**, llvm::ToolContext const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc146dd)
#23 0x0000000000b50983 main (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xb50983)
#24 0x0000150ef4b8b24d __libc_start_main (/lib64/libc.so.6+0x3524d)
#25 0x0000000000c0f9ba _start /home/abuild/rpmbuild/BUILD/glibc-2.31/csu/../sysdeps/x86_64/start.S:122:0
clang++: error: unable to execute command: Bus error (core dumped)
clang++: error: clang frontend command failed due to signal (use -v to see invocation)
AMD clang version 18.0.0git
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin
clang++: note: diagnostic msg: Error generating preprocessed source(s).
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55c4859d4e60) on address 0x14be7c100000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 56: 149327 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x561c52836a00) on address 0x14cd61c00000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 57: 155401 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55e0de39d650) on address 0x144e4d400000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 58: 158290 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55c06d31d2b0) on address 0x14cb03a40000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 59: 160772 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x565234d365b0) on address 0x14be16000000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 60: 163019 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x559d4f99c510) on address 0x148126000000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 62: 169084 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55a41f3e5c60) on address 0x145742e09000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 64: 176101 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Exception ignored in: <function CompiledSDFG.__del__ at 0x152990a537e0>
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 464, in __del__
    self.finalize()
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 368, in finalize
    raise RuntimeError(
RuntimeError: An error was detected after running "complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2": unspecified launch failure. Consider enabling synchronous debugging mode (environment variable: DACE_compiler_cuda_syncdebug=1) to see where the issue originates from.
/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py:2373: UserWarning: SDFG 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2' is already loaded by another object, recompiling under a different name 'complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'.
  warnings.warn(f"SDFG '{self.name}' is already loaded by another object, recompiling under a different "
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:23:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   23 |         hipEventCreate(&__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:25:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   25 |         hipEventCreate(&__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:26:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   26 |         hipEventRecord(__dace_ev_b0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:28:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   28 |         hipEventRecord(__dace_ev_e0_0_30, __state->gpu_context->streams[0]);
      |         ^~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:30:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   30 |         hipEventSynchronize(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:31:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   31 |         hipEventElapsedTime(&__dace_ms_0_0_30, __dace_ev_b0_0_30, __dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:38:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   38 |         hipEventDestroy(__dace_ev_b0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:39:9: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
   39 |         hipEventDestroy(__dace_ev_e0_0_30);
      |         ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp:42:106: error: use of undeclared identifier '__HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0'
   42 |     __state->report.save(".dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/perf", __HASH_complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0);
      |                                                                                                          ^
8 warnings and 1 error generated.
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/build.make:76: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_0.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55a449601570) on address 0x14664c80a000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 67: 23269 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 245, in configure_and_compile
    _run_liveoutput("cmake --build . --config %s" % (Config.get('compiler', 'build_type')),
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 429, in _run_liveoutput
    raise subprocess.CalledProcessError(process.returncode, command, output.getvalue())
subprocess.CalledProcessError: Command 'cmake --build . --config RelWithDebInfo' returned non-zero exit status 2.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 418, in _tile_gpu
    kernel_sdfg(**copy_inputs_2)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2396, in compile
    shared_library = compiler.configure_and_compile(program_folder, sdfg.name)
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 254, in configure_and_compile
    raise cgx.CompilationError('Compiler failure:\n' + ex.output)
dace.codegen.exceptions.CompilationError: Compiler failure:
[ 20%] Building CXX object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cpu/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.cpp.o
[ 40%] Building HIP object CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
9 warnings generated when compiling for gfx942.
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:17:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/math.h:512:16: warning: 'host' attribute only applies to functions [-Wignored-attributes]
  512 |         static DACE_CONSTEXPR_HOSTDEV typeless_pi pi{};
      |                ^
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/types.h:70:42: note: expanded from macro 'DACE_CONSTEXPR_HOSTDEV'
   70 |     #define DACE_CONSTEXPR_HOSTDEV const __host__ __device__
      |                                          ^
/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/__clang_hip_runtime_wrapper.h:21:33: note: expanded from macro '__host__'
   21 | #define __host__ __attribute__((host))
      |                                 ^
In file included from /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp:3:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/dace.h:22:
In file included from /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/stream.h:15:
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:186:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  186 |   gpuLaunchKernel((void *)&ResetGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  187 |                   dim3(1, 1, 1), args_reset, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:199:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  199 |   gpuLaunchKernel((void *)&PushToGPUStream_kernel<T, IS_POW2>, dim3(1, 1, 1),
      |   ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  200 |                   dim3(1, 1, 1), args_push, 0, (gpuStream_t)0);
      |                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:15:25: note: expanded from macro 'gpuLaunchKernel'
   15 | #define gpuLaunchKernel hipLaunchKernel
      |                         ^~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:209:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  209 |   gpuMalloc(&gStart, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:210:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  210 |   gpuMalloc(&gEnd, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:211:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  211 |   gpuMalloc(&gPending, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:16:19: note: expanded from macro 'gpuMalloc'
   16 | #define gpuMalloc hipMalloc
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:212:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  212 |   gpuMemset(gStart, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:213:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  213 |   gpuMemset(gEnd, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:214:3: warning: ignoring return value of function declared with 'nodiscard' attribute [-Wunused-result]
  214 |   gpuMemset(gPending, 0, sizeof(uint32_t));
      |   ^~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include/dace/cuda/stream.cuh:17:19: note: expanded from macro 'gpuMemset'
   17 | #define gpuMemset hipMemset
      |                   ^~~~~~~~~
<built-in>:95:26: error: source file is not valid UTF-8
   95 | #define __CONSTANT_CFSTRINGS__ 1
      |                          ^
<built-in>:95:25: error: unknown type name 'P'
   95 | #define __CONSTANT_CFSTRINGS__ 1
      |                         ^
<built-in>:95:27: error: expected unqualified-id
   95 | #define __CONSTANT_CFSTRINGS__ 1
      |                           ^
<built-in>:95:28: error: source file is not valid UTF-8
   95 | #define __CONSTANT_CFSTRINGS__ 1
      |                            ^
<built-in>:95:32: error: source file is not valid UTF-8
   95 | #define __CONSTANT_CFSTRINGS__ 1
      |                                ^
<built-in>:95:33: error: source file is not valid UTF-8
   95 | #define __CONSTANT_CFSTRINGS__ 1
      |                                 ^
<built-in>:96:1: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      | ^
<built-in>:96:2: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |  ^
<built-in>:96:7: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |       ^
<built-in>:96:9: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |         ^
<built-in>:96:11: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |           ^
<built-in>:96:15: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |               ^
<built-in>:96:16: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |                ^
<built-in>:96:17: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |                 ^
<built-in>:96:18: error: source file is not valid UTF-8
   96 | #define __EXCEPTIONS 1
      |                  ^
<built-in>:97:1: error: source file is not valid UTF-8
   97 | #define __GXX_RTTI 1
      | ^
<built-in>:97:2: error: source file is not valid UTF-8
   97 | #define __GXX_RTTI 1
      |  ^
<built-in>:97:3: error: source file is not valid UTF-8
   97 | #define __GXX_RTTI 1
      |   ^
<built-in>:97:9: error: source file is not valid UTF-8
   97 | #define __GXX_RTTI 1
      |         ^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace, preprocessed source, and associated run script.
Stack dump:
0.	Program arguments: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18 -cc1 -triple x86_64-unknown-linux-gnu -aux-triple amdgcn-amd-amdhsa -emit-obj -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp -mrelocation-model pic -pic-level 2 -fhalf-no-semantic-interposition -mframe-pointer=none -fmath-errno -fno-rounding-math -mconstructor-aliases -funwind-tables=2 -target-cpu x86-64 -tune-cpu generic -debug-info-kind=constructor -dwarf-version=5 -debugger-tuning=gdb -fdebug-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build -fcoverage-compilation-dir=/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build -resource-dir /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18 -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include/cuda_wrappers -idirafter /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/hip-6.2.1-dnxqftoeqt7lshn7es5sf7vnjy2n65ep/include -include __clang_hip_runtime_wrapper.h -D DACE_BINARY_DIR=\"/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/build\" -D USE_PROF_API=1 -D WITH_CUDA -D WITH_HIP -D __HIP_PLATFORM_AMD__=1 -D __HIP_ROCclr__=1 -D complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_EXPORTS -I /capstor/scratch/cscs/ybudanaz/dace/dace/codegen/../runtime/include -D NDEBUG -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocprim-6.2.1-lguqn2d2gznl7t5n7h5w3ndneigfr2zg/include -cxx-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/rocthrust-6.2.1-ihyylrpt7zc2buckjcgkaxlmll3kib4u/include -cxx-isystem . -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12 -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/x86_64-suse-linux -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../include/c++/12/backward -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/lib/clang/18/include -internal-isystem /usr/local/include -internal-isystem /usr/lib64/gcc/x86_64-suse-linux/12/../../../../x86_64-suse-linux/include -internal-externc-isystem /include -internal-externc-isystem /usr/include -O2 -std=gnu++17 -fdeprecated-macro -ferror-limit 19 -fhip-new-launch-api -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -vectorize-loops -vectorize-slp -fcuda-include-gpubinary /tmp/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda-ad6a0d.hipfb -cuid=fda6ecb05f07ac5c -fcuda-allow-variadic-functions -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o -x hip /capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp
1.	<unknown> parser at unknown location
 #0 0x000000000252242b llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x252242b)
 #1 0x000000000251f95b SignalHandler(int) Signals.cpp:0:0
 #2 0x000014708fda2910 __restore_rt (/lib64/libpthread.so.0+0x16910)
 #3 0x00000000058f626c clang::Lexer::lexEditorPlaceholder(clang::Token&, char const*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x58f626c)
 #4 0x00000000058fe1f6 clang::Lexer::LexTokenInternal(clang::Token&, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x58fe1f6)
 #5 0x000000000597b3bc clang::Preprocessor::Lex(clang::Token&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x597b3bc)
 #6 0x00000000045d32ef clang::Parser::ConsumeAnyToken(bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d32ef)
 #7 0x00000000045f8fa2 clang::Parser::SkipMalformedDecl() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45f8fa2)
 #8 0x0000000004610190 clang::Parser::ParseDeclGroup(clang::ParsingDeclSpec&, clang::DeclaratorContext, clang::ParsedAttributes&, clang::SourceLocation*, clang::Parser::ForRangeInit*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x4610190)
 #9 0x00000000045d48db clang::Parser::ParseDeclarationOrFunctionDefinition(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*, clang::AccessSpecifier) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45d48db)
#10 0x00000000045dbb03 clang::Parser::ParseExternalDeclaration(clang::ParsedAttributes&, clang::ParsedAttributes&, clang::ParsingDeclSpec*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dbb03)
#11 0x00000000045dd435 clang::Parser::ParseTopLevelDecl(clang::OpaquePtr<clang::DeclGroupRef>&, clang::Sema::ModuleImportState&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45dd435)
#12 0x00000000045ce5da clang::ParseAST(clang::Sema&, bool, bool) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x45ce5da)
#13 0x000000000300a679 clang::FrontendAction::Execute() (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x300a679)
#14 0x0000000002f8b68b clang::CompilerInstance::ExecuteAction(clang::FrontendAction&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x2f8b68b)
#15 0x00000000030cf782 clang::ExecuteCompilerInvocation(clang::CompilerInstance*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0x30cf782)
#16 0x0000000000c182a6 cc1_main(llvm::ArrayRef<char const*>, char const*, void*) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc182a6)
#17 0x0000000000c10b18 ExecuteCC1Tool(llvm::SmallVectorImpl<char const*>&, llvm::ToolContext const&) driver.cpp:0:0
#18 0x0000000000c146dd clang_main(int, char**, llvm::ToolContext const&) (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xc146dd)
#19 0x0000000000b50983 main (/capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin/clang-18+0xb50983)
#20 0x000014708f79a24d __libc_start_main (/lib64/libc.so.6+0x3524d)
#21 0x0000000000c0f9ba _start /home/abuild/rpmbuild/BUILD/glibc-2.31/csu/../sysdeps/x86_64/start.S:122:0
clang++: error: unable to execute command: Segmentation fault (core dumped)
clang++: error: clang frontend command failed due to signal (use -v to see invocation)
AMD clang version 18.0.0git
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /capstor/scratch/cscs/ybudanaz/spack/opt/spack/linux-sles15-zen3/gcc-12.3.0/llvm-amdgpu-6.2.1-yngnjmgew6jucin34wuga45fbc65ys5f/bin
clang++: note: diagnostic msg: Error generating preprocessed source(s).
gmake[2]: *** [CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/build.make:89: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/.dacecache/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2/src/cuda/hip/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2_cuda.cpp.o] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:85: CMakeFiles/complex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.dir/all] Error 2
gmake: *** [Makefile:91: all] Error 2

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Traceback (most recent call last):
  File "/capstor/scratch/cscs/ybudanaz/LayoutArtifacts/ComplexGEMM/complex_gemm.py", line 424, in <module>
    tiled_sdfg, _ = auto_tile_gpu(
                    ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 911, in auto_tile_gpu
    best_config = _tile_gpu(
                  ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_gpu.py", line 445, in _tile_gpu
    time = auto_tile_util.run_and_measure_time(
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/transformation/auto_tile/auto_tile_util.py", line 272, in run_and_measure_time
    kernel_sdfg(**inputs)
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2472, in __call__
    binaryobj = sdfg.compile()
                ^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/sdfg/sdfg.py", line 2406, in compile
    return compiler.get_program_handle(shared_library, sdfg)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiler.py", line 386, in get_program_handle
    return csd.CompiledSDFG(sdfg, lib, sdfg.arg_names)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 192, in __init__
    lib.load()  # Explicitly load the library
    ^^^^^^^^^^
  File "/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/compiled_sdfg.py", line 127, in load
    raise RuntimeError(f'Could not load library {os.path.basename(self._library_filename)}. {reason}')
RuntimeError: Could not load library libcomplex_gemm_soa_merged_SoA_2048_16384_16384_auto_tiled_0_c2.so. Reason:

/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55ffbad40a10) on address 0x151920409000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 70: 34340 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x5615c1704af0) on address 0x14f2b5e00000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 71: 37653 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x559df321cd60) on address 0x148498a08000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 72: 56401 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x55b279628470) on address 0x14a6a7600000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 73: 60607 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
/capstor/scratch/cscs/ybudanaz/dace/dace/codegen/targets/cuda.py:1873: UserWarning: No `gpu_block_size` property specified on map "complex_gemm_soa_merged_111". Falling back to the configuration entry `compiler.cuda.default_block_size`: 32,1,1. You can either specify the block size to use with the gpu_block_size property, or by adding nested `GPU_ThreadBlock` maps, which map work to individual threads. For more information, see https://spcldace.readthedocs.io/en/latest/optimization/gpu.html
  warnings.warn(
Memory access fault by GPU node-4 (Agent handle: 0x558dc4ba57a0) on address 0x148737e00000. Reason: Unknown.
/var/spool/slurmd/job108634/slurm_script: line 74: 67640 Aborted                 (core dumped) /capstor/scratch/cscs/ybudanaz/.def/bin/python complex_gemm.py --layout SoA --m 2048 --n 16384 --k 16384
