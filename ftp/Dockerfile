FROM alpine:3.9

RUN apk add --no-cache vsftpd bash 

ENV FTP_USER genee
ENV FTP_PASS 83719730
ENV PASV_ADDRESS REQUIRED

ADD vsftpd.conf /etc/vsftpd/
ADD bin /app/bin

RUN chmod +x /app/bin/run && \
		mkdir -p /var/run/vsftpd/empty

VOLUME /data 
VOLUME /var/log

EXPOSE 20 21 

CMD ["/bin/bash","/app/bin/run"]
