FROM alpine:latest

RUN apk update
RUN apk add curl

COPY cron.sh /bin/

ADD crontab /var/spool/crontab/root
RUN crontab /var/spool/crontab/root

ENTRYPOINT ["crond", "-f"]