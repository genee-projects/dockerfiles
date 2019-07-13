FROM alpine:3.9
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --no-cache rsyslog \
	&& echo '$ModLoad imudp.so' >> /etc/rsyslog.conf \
	&& echo '$UDPServerRun 514' >> /etc/rsyslog.conf \
	&& echo '$InputUnixListenSocketCreatePath on' >> /etc/rsyslog.conf \
	&& echo '$AddUnixListenSocket /run/dev/log' >> /etc/rsyslog.conf

ADD start /start

EXPOSE 514/udp

CMD ["/start"]
