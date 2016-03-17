#!/bin/sh

## Serf

apt-get install -y unzip
cd /tmp
wget -O serf.zip https://releases.hashicorp.com/serf/0.7.0/serf_0.7.0_linux_amd64.zip
unzip serf.zip
mkdir -p /opt/serf/bin
mkdir -p /opt/serf/event
mv ./serf /opt/serf/bin/
echo 'export PATH=$PATH:/opt/serf/bin' >> ~/.bashrc

## Docker
curl -sSL https://get.docker.com/ | sh