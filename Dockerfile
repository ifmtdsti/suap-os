FROM debian:10

ENV DEBIAN_FRONTEND=noninteractive

ADD install.sh install.1.apt install.2.apt /

RUN /install.sh && rm -f /install.sh
