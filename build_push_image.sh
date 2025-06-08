#!/bin/bash

# Step 1: Build the Docker image from the Dockerfile with name 'item-app' and tag 'v1'
docker build -t item-app:v1 .

# Step 2: List all local Docker images
docker images

# Step 3: Tag the image to match Docker Hub format (replace <your-dockerhub-username> with your actual username)
docker tag item-app:v1 akechi001/item-app:v1

# Step 4: Login to Docker Hub
docker login

# Step 5: Push the image to Docker Hub
docker push akechi001/item-app:v1
