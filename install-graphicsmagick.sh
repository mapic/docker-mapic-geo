#!/bin/bash

MAJOR=1.3
MINOR=23
VERSION=$MAJOR.$MINOR

export PATH

cd /opt/
wget --no-verbose http://78.108.103.11/MIRROR/ftp/GraphicsMagick/$MAJOR/GraphicsMagick-$VERSION.tar.gz
tar xf GraphicsMagick-$VERSION.tar.gz
cd GraphicsMagick-$VERSION/
./configure
make -j 7
make install

