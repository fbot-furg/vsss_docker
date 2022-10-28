#!/usr/bin/env bash

# Evitar erro com o uso de video
xhost +local:docker

## Buildando o docker
docker buildx build . -f docker/fira.Dockerfile -t fbot/vsss-fira:latest
