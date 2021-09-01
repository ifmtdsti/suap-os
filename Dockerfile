FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

ADD install.sh install.apt /

RUN /install.sh && rm -f /install.sh
