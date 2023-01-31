#!/bin/bash

apt update
apt -y upgrade
apt install -y curl software-properties-common

# Install docker
apt install -y docker.io

# Install docker-compose
curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose

# Create media user
adduser media
adduser media docker

# Create required directory
mkdir -p /data/torrents /data/movies /data/music /data/shows

# Set premissions
chown media: /data /data/torrents /data/movies /data/music /data/shows
