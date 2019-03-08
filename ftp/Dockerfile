FROM alpine:3.9

RUN apk add --no-cache vsftpd bash

ENV FTP_USER gftp \
    FTP_PASS gftp

ADD vsftpd.conf /etc/vsftpd/
ADD bin /app/bin

VOLUME /data 

EXPOSE 21

CMD ["/app/bin/run"]
