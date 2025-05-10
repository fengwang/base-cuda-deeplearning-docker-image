FROM nvidia/cuda:12.8.1-cudnn-devel-ubuntu24.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get clean && \
    apt update -y && \
    apt upgrade -y && \
    apt install -y --no-install-recommends \
    vim \
    ffmpeg \
    wget \
    build-essential \
    python3 \
    python3-dev
RUN rm -rf /usr/lib/python3.12/EXTERNALLY-MANAGED


WORKDIR /tmp
RUN wget https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py && \
    python3 get-pip.py && \
    rm -rf /tmp/get-pip.py

RUN pip3 install -U \
    imageio \
    jupyterlab \
    matplotlib \
    notebook \
    numpy \
    opencv-contrib-python \
    opencv-python \
    pandas \
    scipy \
    seaborn \
    tifffile \
    timm \
    torchtext \
    tqdm \
    vit-pytorch \
    matplotlib \
    tifffile \
    prophet \
    xgboost \
    scikit-learn \
    scikit-image

RUN pip3 install -U torch torchvision torchaudio xformers --index-url https://download.pytorch.org/whl/cu128

# note
# flash-attn is not supported
# vllm is not build with respect to cuda 12.8
RUN pip3 install transformers huggingface_hub tokenizers datasets gradio diffusers bitsandbytes optimum accelerate deepspeed transformer-engine
RUN pip3 install -U tensorflow keras tensorflow-model-optimization keras-tuner tensorflow-datasets tensorflow-text tensorflow-hub tensorflow-io tensorflow-privacy tensorflow-probability tensorflow-serving-api keras-hub autokeras
RUN pip3 install -U "jax[cuda12_local]"
RUN pip3 install -U dm-haiku rlax optax chex jraph flax objax trax jax-md

# for MLOPs
RUN pip3 install -U wandb mlflow minio


