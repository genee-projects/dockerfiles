FROM alpine:3.6
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --nocache rsyslog

VOLUME ["/etc/rsyslog.d", "/var/log"]

EXPOSE 514

CMD ["/usr/sbin/rsyslogd", "-n"]
