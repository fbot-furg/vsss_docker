#!/usr/bin/env bash

# Evitar erro com o uso de video
xhost +local:docker

DOCKER_IMAGE="fbot/firasim:latest"

# Executando o docker
docker run  -it \
            --rm \
            --privileged \
            --net=host \
            --runtime=nvidia \
            --env="DISPLAY" \
            --env="TERM" \
            $DOCKER_IMAGE

# docker run  -it --rm --privileged --net=host --env="DISPLAY" --env="TERM" fbot/firasim:latest