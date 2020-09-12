#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

account_id="206893810529"   #AWS Accound ID
region="us-east-2"          
repository="machine-learning-v4"

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="$account_id.dkr.ecr.$region.amazonaws.com/$repository:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $repository\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=$repository

# Step 3:
# List kubernetes pods
#kubectl get pods
#kubectl get svc

# Step 4:
# Forward the container port to a host
#kubectl port-forward $repository 8000:80
