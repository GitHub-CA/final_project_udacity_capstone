#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

docker build -t dockercharuaggarwal/charu-capstone-udacity .


# Step 2: 
# List docker images

docker image ls


# Step 3: 
# Run Nginx App with Charu's custom index.html

docker run -d --name capstone-charu -p 8000:80 dockercharuaggarwal/charu-capstone-udacity


# List running docker containers
docker ps
