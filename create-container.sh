#!/bin/bash

docker run -it -d -p 8889:8888 -it \
	-p 8888:8888 \
	-e JUPYTER_ENABLE_LAB=yes \
	-e CHOWN_HOME=yes \
	-e CHOWN_HOME_OPTS='-R' \
	-v $(pwd)/practices/volume:/home/jovyan/work \
    --name pyspark \
	jupyter/pyspark-notebook 