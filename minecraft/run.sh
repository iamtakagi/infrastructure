#!/bin/sh

cd /app/waterfall && java -server $WATERFALL_JAVA_OPTS -jar /bin/waterfall.jar --nogui & sleep 20
cd /app/paper && java -server $PAPER_JAVA_OPTS -jar /bin/paper.jar --nogui

# keep the container running
tail -f /dev/null