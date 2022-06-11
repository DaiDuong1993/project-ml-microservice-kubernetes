#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=yangnguyen1993/udacity-image
# Step 2
# Run the Docker Hub container with kubernetes
echo "Docker ID and Image: $dockerpath"
kubectl run udacity-image --image=$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/udacity-image 8000:80
