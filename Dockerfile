FROM debian:11

ENV DEBIAN_FRONTEND=noninteractive

ADD install.sh install.apt /

RUN /install.sh && rm -f /install.sh
