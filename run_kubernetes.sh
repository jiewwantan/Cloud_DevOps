#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=jiewwantan/cloud_devops

# Step 2
# Run the Docker Hub container with kubernetes
docker pull jiewwantan/cloud_devops:latest
kubectl run devops-capstone-deployment\
	    --image=jiewwantan/cloud_devops\
		--port=80 --labels app=devops-capstone-deployment

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward devops-capstone-deployment 8000:80
