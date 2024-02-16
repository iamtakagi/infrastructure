#!/bin/sh

cd /build

URL='https://papermc.io/api/v2/projects/paper'
MC_VERSION='1.20.4'
URL=${URL}/versions/${MC_VERSION}
BUILD='424'
JAR_NAME=paper-${MC_VERSION}-${BUILD}.jar
URL=${URL}/builds/${BUILD}/downloads/${JAR_NAME}

# Download paper.jar
wget ${URL} -O paper.jar