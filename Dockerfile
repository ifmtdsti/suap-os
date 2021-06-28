FROM ubuntu:18.04

ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="America/Cuiaba"

ADD install.sh /
ADD install.apt /

RUN /install.sh && rm -f /install.sh && rm -f /install.apt
