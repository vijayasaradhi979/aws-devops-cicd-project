#!/bin/bash

set -e

AWS_REGION="us-east-1"
ECR_REGISTRY="170871290790.dkr.ecr.us-east-1.amazonaws.com"
ECR_REPOSITORY="aws-devops-app"
IMAGE_TAG="latest"

echo "Logging in to Amazon ECR..."

aws ecr get-login-password --region "$AWS_REGION" | \
docker login --username AWS --password-stdin "$ECR_REGISTRY"

echo "Pulling latest image..."

docker pull "$ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG"