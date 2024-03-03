FROM alpine:latest AS builder

ARG USERNAME=app
ARG GROUPNAME=app
ARG UID=1000
ARG GID=1000

RUN apk add --no-cache wget jq
ADD ./init.sh /build/
ADD ./run.sh /build/
ADD ./mohist /build/mohist
RUN /build/init.sh

FROM eclipse-temurin:18-jre-alpine

RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

WORKDIR /
RUN mkdir -p /app/mohist
COPY --from=builder /build/mohist /app/mohist
COPY --from=builder /build/server.jar /app/mohist/server.jar
COPY --from=builder /build/run.sh /bin/
RUN chmod +x /bin/run.sh
EXPOSE 25565/tcp
CMD /bin/run.sh