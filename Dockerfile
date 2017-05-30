##
# mapic/geo:latest
#

FROM mapic/xenial:latest

# maintainer
MAINTAINER knutole@mapic.io

# install java
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update -y
RUN apt-get install -y openjdk-8-jdk 

# install mysql
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server mysql-client

# install graphics magick
ADD ./install-graphicsmagick.sh /tmp/install-graphicsmagick.sh
RUN sh /tmp/install-graphicsmagick.sh

# install phantom-js
ADD ./install-phantomjs.sh /tmp/install-phantomjs.sh
RUN sh /tmp/install-phantomjs.sh

# install gdal
ADD ./install-gdal.sh /tmp/install-gdal.sh
RUN bash /tmp/install-gdal.sh

# install boost
ADD ./install-boost.sh /tmp/
RUN bash /tmp/install-boost.sh 

# install harfbuzz
ADD ./install-harfbuzz.sh /tmp/
RUN bash /tmp/install-harfbuzz.sh 

# install mapnik
ADD ./install-mapnik.sh /tmp/
RUN bash /tmp/install-mapnik.sh 

# # install yarn
# ADD ./install-yarn.sh /tmp/
# RUN bash /tmp/install-yarn.sh 


RUN rm /etc/apt/sources.list.d/*
RUN apt-get clean

# install postgis
RUN sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
RUN apt-get update -y
RUN apt-get install -y postgresql-client postgis libpq-dev python-psycopg2 postgresql 


# # workdir
# WORKDIR /data

# # volume
# VOLUME ["/data"]