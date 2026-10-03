#!/bin/bash

set -e

CONTAINER_NAME="aws-devops-app"
IMAGE="170871290790.dkr.ecr.us-east-1.amazonaws.com/aws-devops-app:latest"

echo "Starting application container..."

docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

docker run -d \
  --name "$CONTAINER_NAME" \
  --restart unless-stopped \
  -p 3000:3000 \
  "$IMAGE"