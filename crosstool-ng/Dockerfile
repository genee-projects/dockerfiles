FROM debian:stretch-slim
LABEL maintainer=iamfat@gmail.com

RUN apt-get update && apt-get install -y \
    build-essential gettext automake git bison flex \
    texinfo unzip help2man file gawk libtool-bin libncurses5-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# build and install
RUN cd /tmp && git clone https://github.com/crosstool-ng/crosstool-ng.git \
    && cd crosstool-ng \
    && ./bootstrap &&  ./configure &&  make &&  make install \
    && rm -rf /tmp/crosstool-ng

# add user docker
RUN mkdir /cross \
    &&  useradd -u 1000 -r -g sudo -d /cross -s /bin/bash -c "Docker User" docker \
    &&  chown -R docker /cross \
    &&  echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /cross
USER docker

ENTRYPOINT ["ct-ng"]
