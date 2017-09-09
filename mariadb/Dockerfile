FROM alpine:3.6
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --no-cache mariadb mariadb-client \
    && mkdir /app && echo 'export PATH="/app/bin:$PATH"'>/etc/profile.d/docker
ADD bin /app/bin

VOLUME ["/etc/mysql", "/var/lib/mysql", "/var/log/mysql"]
WORKDIR /app

EXPOSE 3306

ENV PATH=/app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD "/app/bin/run"
