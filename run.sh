#!/usr/bin/env bash

# Evitar erro com o uso de video
xhost +local:docker

DOCKER_IMAGE="fbot/vsss:latest"

# Executando o docker
docker run  -it \
            --rm \
            --privileged \
            --net=host \
            --device=/dev/video0:/dev/video0 \
            --env="DISPLAY" \
            --env="TERM" \
            $DOCKER_IMAGE
