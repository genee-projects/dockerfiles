FROM alpine:3.9
LABEL maintainer=iamfat@gmail.com

RUN apk add --no-cache beanstalkd

EXPOSE 11300

ENTRYPOINT ["beanstalkd", "-p", "11300"]
