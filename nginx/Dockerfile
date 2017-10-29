FROM alpine:3.6
MAINTAINER iamfat@gmail.com

RUN apk add --nocache nginx \
    && ln -sf /var/log/nginx/access.log /dev/stdout \
    && ln -sf /var/log/nginx/error.log /dev/stderr

ADD nginx.conf /etc/nginx

VOLUME ["/etc/nginx"]
EXPOSE 80

CMD ["/usr/sbin/nginx"]