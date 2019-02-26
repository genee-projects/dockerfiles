FROM ubuntu:16.04

RUN apt-get update && \
		apt-get install -y --no-install-recommends vsftpd db-util && \
		apt-get clean && \
        mkdir /app

ENV FTP_USER genee
ENV FTP_PASS 83719730
ENV PASV_ADDRESS REQUIRED

ADD vsftpd.conf /etc/vsftpd/
ADD vsftpd /etc/pam.d/
ADD bin /app/bin

RUN chmod +x /app/bin/run && \
		mkdir -p /var/run/vsftpd/empty

VOLUME /data 
VOLUME /var/log/vsftpd

EXPOSE 20 21

CMD ["/app/bin/run"]
