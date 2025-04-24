FROM nvidia/cuda:12.6.0-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies, and compilers
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y \
    python3-pip \
    git \
    gcc \
    g++ \
    gfortran \
    make \
    && rm -rf /var/lib/apt/lists/*

# Clone DaCe and NPBench
WORKDIR /workspace
RUN git clone --recursive https://github.com/spcl/dace.git && \
    git clone --recursive https://github.com/spcl/npbench.git

# Install Python dependencies
WORKDIR /workspace/dace
RUN pip install --upgrade pip && \
    pip install -e .

WORKDIR /workspace/npbench
RUN pip install -e .

RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126
RUN pip install matplotlib
RUN pip install seaborn
RUN pip install pandas
RUN pip install pygount

# Default workdir
WORKDIR /workspace

CMD ["/bin/bash"]
