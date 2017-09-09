FROM alpine:3.6
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --no-cache rsyslog \
	&& echo '$ModLoad imudp.so' >> /etc/rsyslog.conf \
	&& echo '$UDPServerRun 514' >> /etc/rsyslog.conf

VOLUME ["/etc/rsyslog.d", "/var/log", "/dev/log"]

EXPOSE 514

CMD ["/usr/sbin/rsyslogd", "-n"]
