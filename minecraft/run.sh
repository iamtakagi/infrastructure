#!/bin/sh

cd /app/waterfall && java -server $WATERFALL_JAVA_OPTS -jar /bin/waterfall-1.16-431.jar --nogui & sleep 20
cd /app/universal && java -server $PAPER_JAVA_OPTS -jar /bin/paper-1.16.5-794.jar --nogui & sleep 20
cd /app/1.16.5 && java -server $PAPER_JAVA_OPTS -jar /bin/paper-1.16.5-794.jar --nogui & sleep 20
cd /app/1.20.4 && java -server $PAPER_JAVA_OPTS -jar /bin/paper-1.20.4-424.jar --nogui

# keep the container running
tail -f /dev/null