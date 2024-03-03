#!/bin/sh

cd /app/mohist && java -server $JAVA_OPTS -jar server.jar --nogui

tail -f /dev/null