#!/bin/bash

# apt-get update -y
# apt-get install -y language-pack-en-base sudo
# export LC_CTYPE=en_US.UTF-8
# locale-gen en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8
# cd /tmp
# git clone https://github.com/geo-data/gdal-docker.git
# cd gdal-docker
# sh build.sh

sudo apt-get update -y
sudo apt-get install -y gdal-bin python-gdal

