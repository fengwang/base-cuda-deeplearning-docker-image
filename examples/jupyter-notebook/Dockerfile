FROM ljxha471758/cuda-deeplearning-base:latest

EXPOSE 8888

VOLUME /root
VOLUME /workspace

CMD ["/usr/bin/sh", "-c", "/usr/local/bin/jupyter notebook --notebook-dir=/workspace --ip=0.0.0.0 --port=8888 --no-browser --allow-root"]

