FROM alpine:latest AS builder

ARG USERNAME=app
ARG GROUPNAME=app
ARG UID=1000
ARG GID=1000

RUN apk add --no-cache wget jq

ADD ./init.sh /build/
RUN /build/init.sh

ADD ./run.sh /build/

FROM eclipse-temurin:18-jre-alpine

RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

WORKDIR /
COPY --from=builder /build/waterfall.jar /bin/
COPY --from=builder /build/paper.jar /bin/

# run.sh
COPY --from=builder /build/run.sh /bin/
RUN chmod +x /bin/run.sh
CMD ["/bin/run.sh"]

EXPOSE 25565/tcp