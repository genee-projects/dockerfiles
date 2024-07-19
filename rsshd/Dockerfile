FROM alpine:3

RUN apk add --upgrade --no-cache rssh rsync && mkdir /jail

ENV RSSH_USER=rssh \
    RSSH_GROUP=rssh \
    RSSH_PASS=rssh

EXPOSE 22

VOLUME /mnt/data

ADD start /start
CMD ["/start"]
