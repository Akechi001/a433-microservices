#!/bin/bash

# Step 1: Build Docker image using the Dockerfile in the current directory
docker build -t item-app:v1 .

# Step 2: List all Docker images to confirm the build succeeded
docker images

# Step 3: Tag the image for GitHub Container Registry
# Replace <your-github-username> with your actual GitHub username
docker tag item-app:v1 ghcr.io/Akechi001/item-app:v1

# Step 4: Log in to GitHub Container Registry
# This requires a GitHub personal access token with the 'write:packages' scope
echo "Logging in to GitHub Container Registry..."
echo "<your-personal-access-token>" | docker login ghcr.io -u Akechi001 --password-stdin

# Step 5: Push the tagged image to GitHub Container Registry
docker push ghcr.io/Akechi001/item-app:v1
