#!/bin/bash

set -e

echo "Waiting for application..."

for i in {1..10}; do
    if curl -fsS http://localhost:3000 > /dev/null; then
        echo "Application is healthy."
        exit 0
    fi

    echo "Application not ready yet..."
    sleep 3
done

echo "Application health check failed."
exit 1