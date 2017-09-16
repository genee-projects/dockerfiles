FROM alpine:3.6
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --no-cache mariadb mariadb-client bash rsync socat iproute2 \
    && mkdir -p /usr/lib/galera && mkdir /app \
    && echo 'export PATH="/app/bin:$PATH"'>/etc/profile.d/docker

ADD bin /app/bin
ADD libgalera_smm.so /usr/lib/galera/libgalera_smm.so
ADD wsrep_sst_mariabackup /usr/bin/wsrep_sst_mariabackup

VOLUME ["/etc/mysql", "/var/lib/mysql", "/var/log/mysql"]
WORKDIR /app

EXPOSE 3306

ENV PATH=/app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD "/app/bin/run"
