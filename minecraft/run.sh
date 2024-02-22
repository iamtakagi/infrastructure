#!/bin/sh

cd /app/waterfall && nohup java $WATERFALL_JAVA_OPTS -jar /bin/waterfall.jar --nogui & sleep 20
cd /app/paper && nohup java $PAPER_JAVA_OPTS -jar /bin/paper.jar --nogui

# keep the container running
tail -f /dev/null