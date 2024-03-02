FROM alpine:latest AS builder

ARG USERNAME=app
ARG GROUPNAME=app
ARG UID=1000
ARG GID=1000

RUN apk add --no-cache wget jq
ADD ./init.sh /build/
ADD ./run.sh /build/
RUN /build/init.sh

FROM openjdk:16-jdk-alpine3.13

RUN apk --update add tzdata  && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

WORKDIR /
COPY --from=builder /build/waterfall-1.16-431.jar /bin/
COPY --from=builder /build/paper-1.16.5-794.jar /bin/
COPY --from=builder /build/paper-1.20.4-424.jar /bin/

COPY --from=builder /build/run.sh /bin/
RUN chmod +x /bin/run.sh

EXPOSE 25565/tcp
CMD /bin/run.sh