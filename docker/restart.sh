#!/bin/bash

set -e

CONTAINER_NAME="kubsu_runner"

echo "Pulling latest image..."
podman pull chernyshovanika/linuxhomework:latest

if podman container exists "$CONTAINER_NAME"; then
    echo "Removing existing container..."
    podman stop "$CONTAINER_NAME"
    podman rm "$CONTAINER_NAME"
fi

echo "Starting new container..."
podman run -d \
  --name "$CONTAINER_NAME" \
  --network host \
  --restart=always \
  chernyshovanika/linuxhomework:latest

echo "Container '$CONTAINER_NAME' is now running."
