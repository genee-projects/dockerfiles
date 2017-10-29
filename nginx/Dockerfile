FROM alpine:3.6
MAINTAINER iamfat@gmail.com

RUN apk add --no-cache nginx \
    && ln -sf /var/log/nginx/access.log /dev/stdout \
    && ln -sf /var/log/nginx/error.log /dev/stderr \
    && mkdir -p /run/nginx

ADD nginx.conf /etc/nginx

EXPOSE 80

CMD ["/usr/sbin/nginx"]