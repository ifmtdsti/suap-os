#!/bin/bash

apt-get --yes update

apt-get --yes --autoremove dist-upgrade

apt-get install --yes --autoremove $(grep -vE "^\s*#" /install.apt | tr "\n" " ")

ln -snf /usr/share/zoneinfo/$TZ /etc/localtime 

echo $TZ > /etc/timezone

update-alternatives --install /usr/bin/python python /usr/bin/python3 0
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 0

apt-get autoclean

apt-get clean

rm -rf /var/lib/apt/lists/*
