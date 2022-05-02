#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/freddy /tmp/.auth freddy@10.0.2.20:/tmp/.auth
scp -i /opt/freddy ./jenkins/deploy/publish.sh freddy@10.0.2.20:/tmp/publish

ssh -i /opt/freddy freddy@10.0.2.20 "/tmp/publish"
