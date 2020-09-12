#!/usr/bin/env bash

account_id="206893810529"
region="us-east-2"
repository="machine-learning-v4"

## Complete the following steps to get Docker running locally

# Step 0: 
#Retrieve an authentication token and authenticate (using Cloud9).
aws ecr get-login-password --region $region | docker login --username AWS --password-stdin $account_id.dkr.ecr.$region.amazonaws.com


# Step 1:
# Build image and add a descriptive tag
docker build -t $repository .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8080:80 $repository
