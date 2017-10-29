FROM alpine:3.6
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --no-cache mariadb mariadb-client bash rsync socat iproute2 \
    && mkdir -p /usr/lib/galera && mkdir /app \
    && echo 'export PATH="/app/bin:$PATH"' > /etc/profile.d/docker \
    && mkdir -p /var/log/mysql && chown mysql:mysql /var/log/mysql \
    && ln -sf /dev/stderr /var/log/mysql/error.log \
    && ln -sf /dev/stdout /var/log/mysql/general.log \
    && ln -sf /dev/stdout /var/log/mysql/mysql.log

ADD bin /app/bin
ADD libgalera_smm.so /usr/lib/galera/libgalera_smm.so
ADD wsrep_sst_mariabackup /usr/bin/wsrep_sst_mariabackup

WORKDIR /app

EXPOSE 3306

ENV PATH=/app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD "/app/bin/run"
