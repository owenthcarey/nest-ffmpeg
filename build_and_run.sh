#!/bin/bash

# Replace with the desired image name
IMAGE_NAME="nest-ffmpeg"
PORT=3000

# Stop and remove any existing Docker container using the same port
if docker ps -a --format '{{.Ports}}' | grep "0.0.0.0:${PORT}->"; then
  echo "A Docker container is already using port ${PORT}. Stopping and removing the container."
  CONTAINER_ID=$(docker ps -a -q --filter "expose=${PORT}/tcp")
  docker stop "${CONTAINER_ID}"
  docker rm "${CONTAINER_ID}"
fi

# Build the Docker image
echo "Building Docker image: ${IMAGE_NAME}"
docker build -t "${IMAGE_NAME}" .

# Run a new Docker container using the created image
echo "Running Docker container for image: ${IMAGE_NAME}"
docker run -p 3000:3000 "${IMAGE_NAME}"
