FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk add --upgrade --no-cache bash openssh

ENV FTP_USER=sftp \
    FTP_GROUP=sftp \
    FTP_PASS=sftp

EXPOSE 22

VOLUME /var/lib/ftp

ADD sshd_config /etc/ssh/sshd_config
ADD start /start
CMD ["/start"]
