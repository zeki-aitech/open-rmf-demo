#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
DOCKERFILE="$SCRIPT_DIR/Dockerfile"
IMAGE_NAME="open-rmf-demo"
IMAGE_TAG="latest"


# Build the Docker image
build_image() {
    echo "Building Docker image..."
    docker build -t "$IMAGE_NAME:$IMAGE_TAG" -f "$DOCKERFILE" "$SCRIPT_DIR"
}


build_image()