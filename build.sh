#!/bin/bash

IMAGE_TAG="$1"

if [ -z "$IMAGE_TAG" ];then
  IMAGE_TAG='latest'
fi
  
docker build -t calc:"$IMAGE_TAG" ./
