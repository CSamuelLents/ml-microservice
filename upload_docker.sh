#!/usr/bin/env bash

# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

dockerpath=csamuellents/ml-microservice

# Step 2:  
docker login
docker tag ml-microservice:latest "$dockerpath:latest"
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push "$dockerpath:latest"
