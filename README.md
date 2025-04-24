# Artifact Description

The dockerfile comes with the software needed to reproduce the experiments.

The readme is structured as follows:

+ Installing Docker, Building the Docker Image
+ Reproducing ComplexGEMM benchmark
+ Reproducing AoSvsSoA Simulation benchmark
+ Reproducing AutoSchedule / Implicit Layout Transformation benchmark
+ Reproducing Semi-Structured Stencil benchmark
+ Reproducing ICON Velocity Tendencies benchmark

All chapters provide how to reproduce the experiment as well as the plots from the data obtained from the experiments.

## Building and Running the Docker Image

To build the container use the Dockerfile available in the root of the repository. The readme assumes Ubuntu (or Ubuntu-based) Linux Distribution for the commands.

You need to install `nvidia-container-toolkit` to run CUDA experiments. Follow install instructions for [Nvidia Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html) and [Installing Docker](https://docs.docker.com/engine/install/ubuntu/)

```bash
sudo docker build -t dace-cuda-12.6 .
```

Start the docker container using the following command:
```bash
sudo docker run --gpus all -it -v $(pwd):/workspace/artifacts dace-cuda-12.6
```

## Reproducing ComplexGEMM benchmark

Assuming you are in the docker container.

```bash
cd /workspace/artifacts/ComplexGEMM
./reproduce.sh
```

It generates the scripts used to run the experiments and runs them one by one. Illegal tiling configurations can result with an abortion of the program therefore the job is launched repeatedly. (Illegal tiling configurations are discarded).

To reproduce the plots used in the publication:
```bash
cd /workspace/artifacts/ComplexGEMM/ComplexGEMMData/ComplexGEMM
./reproduce.sh
```
