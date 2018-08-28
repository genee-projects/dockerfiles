FROM node:8-alpine
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk --no-cache add ncurses bash python build-base git openssh-client \
    && npm i -g npm mocha jasmine karma grunt-cli gulp @vue/cli wepy-cli