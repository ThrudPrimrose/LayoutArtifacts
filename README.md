# Artifact Description

The dockerfile comes with the software needed to reproduce the experiments.

The readme is structured as follows:

+ Installing Docker, Building the Docker Image
+ Reproducing ComplexGEMM benchmark
+ Reproducing AutoSchedule / Implicit Layout Transformation benchmark
+ Reproducing AoSvsSoA Simulation benchmark
+ Reproducing Semi-Structured Stencil benchmark
+ Reproducing Automated Schedule Search Benchmark
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

The script runs the following commands:
```bash
# Checkout correct DaCe branch and version
cd /workspace/dace
git checkout 2d370ba
cd /workspace/artifacts/ComplexGEMM

# Generate submission scripts for the Docker version
python3.10 submit_docker.py

# Run the generated scripts
for script in ./temp_*; do
    if [[ -f "$script" ]]; then
        # Make the script executable if it is not
        if [[ ! -x "$script" ]]; then
            echo "Making $script executable..."
            chmod +x "$script"
        fi
        echo "Running $script..."
        "$script"
    fi
done
```

It generates the scripts used to run the experiments and runs them one by one. Illegal tiling configurations can result with an abortion of the program therefore the job is launched repeatedly. (Illegal tiling configurations are discarded from output).

To reproduce the plots used in the publication:
```bash
cd /workspace/artifacts/ComplexGEMM/ComplexGEMMData/ComplexGEMM
# TODO
```

## Reproducing AutoSchedule / Implicit Layout Transformation benchmark

The data is obtained by running NPBench on different platforms. The reproduce auto-tiling using CUDA on a Nvidia GPU:

```bash
# Checkout correct commits
cd /workspace/dace
git checkout 4cb336ee93921ac34aa414e918a45f477913aa8e
cd /workspace/npbench
git checkout f819837

# Run dace-gpu and dace-gpu-auto-tile
python3.10 run_framework.py -f dace_gpu -k jacobi_2d -p XL -t 86400
python3.10 run_framework.py -f dace_gpu_auto_tile -k jacobi_2d -p XL -t 86400
```

The current plotting script excepts results from MI300A and MI250x GPUs.
If you ran the result on MI300A move the values to a folder names `mi300a`, if MI250x,
move to `mi250x`. If you want to enable the results to be plotted for `a100` or `v100` or `gh200`
then you need to extend the plotting script to accept those devices.
```bash
# Copy over the plotting script
cp /workspace/artifacts/ImplicitLayout/ImplicitLayoutData/merge.py .
cp /workspace/artifacts/ImplicitLayout/ImplicitLayoutData/roofline3.py .
cp /workspace/artifacts/ImplicitLayout/ImplicitLayoutData/*.json .
# Plot
cp npbench.db npbench.db.old
mkdir -p mi300a
cp npbench.db mi300a/
python3.10 merge.py
python3.10 roofline3.py
```

The reproduce script in the folder runs the same commands to reproduce the.

## Reproducing AoS-vs-SoA Benchmark

This benchmark runs on CPUs. To reproduce the results and to plot the results (the plot will have a different format than in the publication):

```bash
cd /workspace/dace
git checkout 80756d9
cd /workspace/artifacts/AoSvsSoASimulations
python3.10 run_simulation_benchmarks.py
```

To plot using the publication data (to get the plot used in the publication):
```bash
cd /workspace/artifacts/AoSvsSoASimulations
#TODO
```

## Reproducing Semi-Structured Stencil benchmark

## Reproducing Automated Schedule Search Benchmark

To run varying GEMM configurations and create the data for A100 run:
```bash
cd /workspace/artifacts/MatMulJourney/publication_data
# Generate random matrix data, binary
python3.10 gen_data.py
# Compile with different template parameters and run
python3.10 runner.py
mv output.csv output_16k_a100.csv
# To plot:
python3.10 plotter2.py
```

To run on other devices and matrix sizes the scripts need to be manually changes.
In publication it was run on an A100 GPU and on dimensions M=N=K=16384.

To plot using the publication data (to get the plot used in the publication):
```bash
cd /workspace/artifacts/MatMulJourney/publication_data
python3.10 plotter2.py
```

The plot named `16k_a100_Inner-ProductHistory_16k_a100.pdf` was used for the publication.

## Reproducing ICON Velocity Tendencies benchmark