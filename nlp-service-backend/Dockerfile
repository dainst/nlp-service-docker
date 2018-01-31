FROM debian:stretch

MAINTAINER Deutsches Archäologisches Institut "dev@dainst.de"

ENV REFRESHED_AT 2018-01-29
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get clean

RUN apt-get install -y \
      python3 \
      python3-pip \
      locales

RUN rm -rf /var/lib/apt/lists/*
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG LANG=en_US.UTF-8

RUN pip3 install \
      Flask \
      pymongo

ENV LC_ALL en_US.UTF-8
ENV LANG LANG=en_US.UTF-8

EXPOSE 5000

COPY docker-entrypoint.sh /root

ENTRYPOINT ["/root/docker-entrypoint.sh"]