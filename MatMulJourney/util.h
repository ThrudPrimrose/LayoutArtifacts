#pragma once

#include <cuda_runtime.h>
#include <iostream>

void readBinaryFile(const char *filename, float *data, size_t size) {
  std::ifstream file(filename, std::ios::in | std::ios::binary);
  if (file) {
    file.read(reinterpret_cast<char *>(data), size);
    file.close();
  } else {
    std::cerr << "Error opening file: " << filename << std::endl;
    exit(1);
  }
}

#define CHECK_CUDA_ERR(call)                                                   \
  do {                                                                         \
    cudaError_t err = call;                                                    \
    if (err != cudaSuccess) {                                                  \
      std::cerr << "CUDA Error: " << cudaGetErrorString(err)                   \
                << " (error code: " << err << ")" << " at " << __FILE__ << ":" \
                << __LINE__ << std::endl;                                      \
      cudaDeviceReset();  /* Reset the device to clear the error state */      \
      exit(EXIT_FAILURE); /* Terminate the program */                          \
    }                                                                          \
  } while (0)
