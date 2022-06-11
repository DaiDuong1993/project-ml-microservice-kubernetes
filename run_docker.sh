#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 0:
# Build image and add a descriptive tag
docker build --tag=udacity-image .

# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -it --publish 8000:80 udacity-image

