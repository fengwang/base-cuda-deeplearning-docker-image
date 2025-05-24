# Jupyter Notebook Docker


## Build up the image

```bash
docker build --file ./Dockerfile . -t  cuda-deeplearning-jupyter-notebook
```

### Invoke the container


Example command:

```bash
docker run --rm -it  --gpus all -p 8888:8888 -v $(pwd)/data/workspace:/workspace -v $(pwd)/data/config:/root -v $(pwd)/data/logs:/logs --name cuda-deeplearning-jupyter-notebook cuda-deeplearning-jupyter-notebook
```


Or using docker-compose:

```bash
docker-compose up -d
```


