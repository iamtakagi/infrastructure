FROM alpine:latest AS builder

COPY cron.sh /bin/

ADD crontab /var/spool/crontab/root
RUN crontab /var/spool/crontab/root

ENTRYPOINT ["crond", "-f"]