#!/bin/bash

echo "----------------------"
echo "---- Pushing image ---"
echo "----------------------"

IMAGE="maven-project"


echo "---- Loging in ----"
docker login -u freddy55 -p $PASS

echo "---- Tagging image ----"
docker tag $IMAGE:$BUILD_TAG freddy55/$IMAGE:$BUILD_TAG

echo "---- Pushing image ----"
docker push freddy55/$IMAGE:$BUILD_TAG

