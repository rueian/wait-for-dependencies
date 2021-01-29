#!/bin/sh

export DOCKER_BUILDKIT=1

docker buildx build --push --platform=linux/amd64,linux/arm64 -t rueian/wait-for-dependencies:latest -o type=image .