FROM alpine:3.6
MAINTAINER iamfat@gmail.com

RUN apk add --no-cache nginx \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \
    && mkdir -p /run/nginx

ADD nginx.conf /etc/nginx

EXPOSE 80

CMD ["/usr/sbin/nginx"]