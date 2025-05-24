# ALL in one deeplearning docker base image

This is a base image for deep learning with all the necessary libraries and tools pre-installed.
It is based on the official NVIDIA PyTorch image and includes TensorFlow, Jax, and other popular libraries.

## Features
- CUDA 12.8 based on Ubuntu 24.04
- PyTorch 2.7.0
- TensorFlow 2.19.0
- Jax 0.6.0

## Install

Pull the image from GitHub Container Registry:
```bash
docker pull ljxha471758/cuda-deeplearning-base
```

Or Build the image from source:
```bash
docker build -t cuda-deeplearning-base:latest . --progress=plain --no-cache
```

## Run the image
```bash
docker run --gpus all -it --rm \
    -v /path/to/your/data:/data \
    -v /path/to/your/code:/code \
    -p 8888:8888 \ # if you want to invoke jupyter notebook/lab
    cuda-deeplearning-base:latest bash
```


## Usage

Compose your own dockerfile based on this image:
```dockerfile
FROM ljxha471758/cuda-deeplearning-base:latest
# Your custom dockerfile commands
```

Then build your own image:
```bash
docker build -t your-image-name:latest .
```

### Jupyter Notebook example

Check [here](./examples/jupyter-notebook/readme.md) for a complete example of how to run Jupyter Notebook in the container.


## Pre-Installed Libraries
- [System Libraries](./system_packages.txt)
- [Python Libraries](./python_packages.txt)




