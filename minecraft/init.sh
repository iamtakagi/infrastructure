#!/bin/sh

cd /build

VERSION='1.16'
BUILD='431'
JAR_NAME=waterfall-${VERSION}-${BUILD}.jar
URL=https://papermc.io/api/v2/projects/waterfall/versions/${VERSION}/builds/${BUILD}/downloads/${JAR_NAME}
wget ${URL} -O ${JAR_NAME}

VERSION='1.16.5'
BUILD='794'
JAR_NAME=paper-${VERSION}-${BUILD}.jar
URL=https://papermc.io/api/v2/projects/paper/versions/${VERSION}/builds/${BUILD}/downloads/${JAR_NAME}
wget ${URL} -O ${JAR_NAME}

VERSION='1.20.4'
BUILD='424'
JAR_NAME=paper-${VERSION}-${BUILD}.jar
URL=https://papermc.io/api/v2/projects/paper/versions/${VERSION}/builds/${BUILD}/downloads/${JAR_NAME}
wget ${URL} -O ${JAR_NAME}