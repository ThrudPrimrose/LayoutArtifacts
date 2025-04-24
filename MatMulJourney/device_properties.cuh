#pragma once 

#include <iostream>
#include <cuda_runtime.h>

int getSPcores(const cudaDeviceProp &devProp) {
  constexpr char errMessage[] = "Unknown device type in theoretical peak "
                                "FLOP/s calculation for Nvidia GPUs";
  int cores = 0;
  int mp = devProp.multiProcessorCount;

  switch (devProp.major) {
  case 2: { // Fermi
    if (devProp.minor == 1) {
      cores = mp * 48;
    } else {
      cores = mp * 32;
    }
    break;
  }
  case 3: { // Kepler
    cores = mp * 192;
    break;
  }
  case 5: { // Maxwell
    cores = mp * 128;
    break;
  }
  case 6: { // Pascal
    if ((devProp.minor == 1) || (devProp.minor == 2)) {
      cores = mp * 128;
    } else if (devProp.minor == 0) {
      cores = mp * 64;
    } else {
      throw std::runtime_error(errMessage);
    }
    break;
  }
  case 7: { // Volta and Turing
    if ((devProp.minor == 0) || (devProp.minor == 5)) {
      cores = mp * 64;
    } else {
      throw std::runtime_error(errMessage);
    }
    break;
  }
  case 8: { // Ampere
    if (devProp.minor == 0) {
      cores = mp * 64;
    } else if (devProp.minor == 6) {
      cores = mp * 128;
    } else if (devProp.minor == 9) {
      cores = mp * 128; // ada lovelace
    } else {
      throw std::runtime_error(errMessage);
    }
    break;
  }
  case 9: { // Hopper
    if (devProp.minor == 0) {
      cores = mp * 128;
    } else {
      throw std::runtime_error(errMessage);
    }
    break;
  }
  default: {
    throw std::runtime_error(errMessage);
  }
  }

  return cores;
}


// Function to calculate peak doubleing point performance (in GFLOPS)
double calculatePeakGFlops(const cudaDeviceProp& prop) {
    double gflops = 2.0f * prop.clockRate * getSPcores(prop) / 1.0e6f;
    return gflops;
}

// Function to calculate memory bandwidth (in GB/s)
double calculateMemoryBandwidth(const cudaDeviceProp& prop) {
    double bandwidth = 2.0f * prop.memoryClockRate * (prop.memoryBusWidth / 8) / 1.0e6f;
    return bandwidth;
}

void get_max_bandwidth_and_flops(double& bandwidth, double& flops) {
    int device;
    cudaGetDevice(&device);

    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, device);

    std::cout << "Device name: " << prop.name << std::endl;

    bandwidth = calculateMemoryBandwidth(prop);
    flops = calculatePeakGFlops(prop);
    std::cout << "Peak floating point performance: " << flops << " GFLOPS" << std::endl;
    std::cout << "Memory bandwidth: " << bandwidth << " GB/s" << std::endl;

}
