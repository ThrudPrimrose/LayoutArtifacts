#pragma once
#include <iostream>

bool checkDimensions(dim3 gridDim, dim3 blockDim) {
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, 0);  // Assuming device 0

    // Check block dimensions
    if (blockDim.x > prop.maxThreadsDim[0] ||
        blockDim.y > prop.maxThreadsDim[1] ||
        blockDim.z > prop.maxThreadsDim[2]) {
        std::cerr << "Error: Block dimension exceeds the device limit.\n";
        return false;
    }

    // Check total threads per block
    int totalThreadsPerBlock = blockDim.x * blockDim.y * blockDim.z;
    if (totalThreadsPerBlock > prop.maxThreadsPerBlock) {
        std::cerr << "Error: Total threads per block exceed the device limit.\n";
        return false;
    }

    // Check grid dimensions
    if (gridDim.x > prop.maxGridSize[0] ||
        gridDim.y > prop.maxGridSize[1] ||
        gridDim.z > prop.maxGridSize[2]) {
        std::cerr << "Error: Grid dimension exceeds the device limit.\n";
        return false;
    }

    return true;
}