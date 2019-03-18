FROM alpine:3.9
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --no-cache mariadb mariadb-server-utils mariadb-client bash \
    && mkdir /app \
    && echo 'export PATH="/app/bin:$PATH"' > /etc/profile.d/docker

ADD bin /app/bin

WORKDIR /app

EXPOSE 3306

ENV PATH=/app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD ["/app/bin/run"]
