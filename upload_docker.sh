#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=olaism/microservice:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
winpty docker login -u olaism
docker image tag microservice $dockerpath
# docker tag local-image:microservice new-repo:microservice:latest

# Step 3:
# Push image to a docker repository
docker image push olaism/microservice:latest