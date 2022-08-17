#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=olaism/microservice:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy microservice --image=olaism/microservice:latest

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/microservice-84857d9565-2598m --address 0.0.0.0 8000:80