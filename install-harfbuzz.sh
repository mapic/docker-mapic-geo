#!/bin/bash

# install harfbuzz
wget https://www.freedesktop.org/software/harfbuzz/release/harfbuzz-1.4.6.tar.bz2
sudo apt-get install -y gcc g++ libfreetype6-dev libglib2.0-dev libcairo2-dev bzip2
bunzip2 harfbuzz-1.4.6.tar.bz2
tar xvf harfbuzz-1.4.6.tar
cd harfbuzz-1.4.6
./configure && make && make install