#!/usr/bin/env bash

# Build image
docker build -t ml-microservice:latest .

# List docker images
docker image ls

# Run flask app
docker run -d -p 8000:80 ml-microservice
# docker run -it --entrypoint /bin/bash ml-microservice 
