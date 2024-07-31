#!/bin/sh

cd /build

VERSION='1.20.1'
BUILD='776'
JAR_NAME=mohist-${VERSION}-${BUILD}-server.jar
URL=https://mohistmc.com/api/v2/projects/mohist/${VERSION}/builds/${BUILD}/download
wget ${URL} -O server.jar