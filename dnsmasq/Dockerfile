FROM alpine:3.3
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk add --no-cache dnsmasq \
    && echo 'conf-dir=/etc/dnsmasq.d/,*.conf' >> /etc/dnsmasq.conf \
    && mkdir -p /etc/dnsmasq.d

VOLUME ["/etc/dnsmasq.d"]

EXPOSE 53 53/udp
CMD ["dnsmasq", "-k"]