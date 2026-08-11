#!/bin/bash

# Authorized lab server only
TARGET="http://192.168.56.10"

echo "Starting controlled HTTP traffic test..."

for i in {1..100}; do
    curl -s "$TARGET" > /dev/null
done

echo "Test completed."
