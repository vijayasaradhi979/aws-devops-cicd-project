#!/bin/bash

set -e

CONTAINER_NAME="aws-devops-app"

if docker ps -q --filter "name=$CONTAINER_NAME" | grep -q .; then
    docker stop "$CONTAINER_NAME"
fi