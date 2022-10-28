#!/usr/bin/env bash

# Evitar erro com o uso de video
xhost +local:docker

DOCKER_IMAGE="fbot/vsss-fira:latest"

# Executando o docker
docker run  -it \
            --rm \
            --privileged \
            --net=host \
            --env="DISPLAY" \
            --env="TERM" \
            $DOCKER_IMAGE
