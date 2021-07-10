FROM ubuntu:18.04

ADD install.sh install.apt /

RUN /install.sh && rm -f /install.sh
