#!/bin/bash

export TZ="America/Cuiaba"

apt-get --yes update

apt-get --yes --autoremove dist-upgrade

apt-get install --yes --autoremove $(grep -vE "^\s*#" /install.1.apt | tr "\n" " ")
apt-get install --yes --autoremove $(grep -vE "^\s*#" /install.2.apt | tr "\n" " ")

ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

echo $TZ > /etc/timezone

update-alternatives --install /usr/bin/python python /usr/bin/python3 0
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 0

ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib/libz.so
ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib/libjpeg.so
ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib/libfreetype.so

curl -fsSL https://code-server.dev/install.sh | sh

apt-get autoclean clean

rm -rf /var/lib/apt/lists/*
rm -rf /var/tmp/*
rm -rf /tmp/*

rm -fr /install.1.apt
rm -fr /install.2.apt
