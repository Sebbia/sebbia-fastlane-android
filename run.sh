#!/bin/bash

set -e
set -x

IMAGE_NAME=sebbia-fastlane-android

docker build -t $IMAGE_NAME -f Dockerfile .
docker run --rm -it $IMAGE_NAME sh
