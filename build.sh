#!/usr/bin/env bash

# Evitar erro com o uso de video
xhost +local:docker

## Buildando o docker
docker buildx build . -f docker/vsss.Dockerfile -t fbot/vsss:latest
