#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

account_id="206893810529"   #AWS Accound ID
region="us-east-2"          
repository="machine-learning-v4"

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

dockerpath="$account_id.dkr.ecr.$region.amazonaws.com/$repository:latest"

# Step 2:  
# Authenticate & tag
docker tag $repository:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
