#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=henokhm/cloud-devops-proj-4

# Step 2:  
# Authenticate & tag
docker login
docker tag 0407bc3e047a henokhm/cloud-devops-proj-4
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push henokhm/cloud-devops-proj-4
