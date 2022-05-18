FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

ADD install.sh install.apt /

RUN chmod +x /install.sh && /install.sh && rm -f /install.sh
