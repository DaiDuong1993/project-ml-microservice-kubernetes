#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=yangnguyen1993/udacity-image
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u yangnguyen1993
docker tag udacity-image $dockerpath

# Step 3:
# Push image to a docker repository
echo "Docker ID and Image push"
docker push $dockerpath
