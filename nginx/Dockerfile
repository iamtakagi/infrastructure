FROM nginx:1.25.3

RUN apt-get update -yqq && \
        apt-get install -y openssl

COPY nginx.conf /etc/nginx/
COPY conf.d/ /etc/nginx/conf.d/