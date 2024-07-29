#!/bin/sh

cd /build

VERSION='1.20.1'
BUILD='558'
JAR_NAME=mohist-${VERSION}-${BUILD}-server.jar
URL=https://mohistmc.com/api/v2/projects/mohist/${VERSION}/builds/${BUILD}/${JAR_NAME}
wget ${URL} -O server.jar