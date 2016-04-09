FROM alpine:3.3
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --update mariadb mariadb-client && rm -rf /var/cache/apk/* \
    && mkdir /app && echo 'export PATH="/app/bin:$PATH"'>/etc/profile.d/docker
ADD bin /app/bin

VOLUME ["/etc/mysql", "/var/lib/mysql"]
WORKDIR /app

EXPOSE 3306

ENV PATH=/app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD "/app/bin/run"
