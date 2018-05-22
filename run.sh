#!/bin/sh

# provision elasticsearch user
adduser --gecos "" --ingroup sudo -N --disabled-password elasticsearch
chown -R elasticsearch /elasticsearch /data
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# allow for memlock
ulimit -l unlimited

# run
sudo -E -u elasticsearch /elasticsearch/bin/elasticsearch
