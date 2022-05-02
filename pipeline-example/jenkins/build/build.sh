#!/bin/bash

# copy the new jar to the new location

cp -f java-app/target/*.jar jenkins/build/

echo "--------------------------"
echo "-------building image ----"
echo "--------------------------"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
