FROM alpine:3.4
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk update && apk add redis && rm -rf /var/cache/apk/* && \
    mkdir -p /etc/redis && mv /etc/redis.conf /etc/redis && \
    sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis/redis.conf && \
    sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis/redis.conf && \
    sed -i 's/^# syslog-enabled/syslog-enabled/' /etc/redis/redis.conf

VOLUME ["/etc/redis", "/var/log/redis"]

EXPOSE 6379

CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]