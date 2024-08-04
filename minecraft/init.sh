#!/bin/sh

cd /build

VERSION='1.20.4'
BUILD='424'
JAR_NAME=paper-${VERSION}-${BUILD}.jar
URL=https://papermc.io/api/v2/projects/paper/versions/${VERSION}/builds/${BUILD}/downloads/${JAR_NAME}
wget ${URL} -O paper.jar