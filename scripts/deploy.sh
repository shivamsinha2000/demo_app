#!/usr/bin/bash

APP_NAME="flask-cicd"
IMAGE_NAME="your-dockerhub-username/$APP_NAME"

echo "Pulling image..."
docker pull $IMAGE_NAME

echo "Stopping and removing old container..."
docker rm -f $APP_NAME || true

echo "Running new container..."
docker run -d --name $APP_NAME -p 80:5000 $IMAGE_NAME

