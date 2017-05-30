#!/bin/bash
# Set the env variable DEBIAN_FRONTEND to noninteractive
export DEBIAN_FRONTEND=noninteractive
export INITRD=No

# Install updates
echo "deb http://ppa.launchpad.net/w-rouesnel/openssh-hpn/ubuntu trusty main" > /etc/apt/sources.list.d/w-rouesnel-openssh-hpn.list
echo "deb-src http://ppa.launchpad.net/w-rouesnel/openssh-hpn/ubuntu trusty main" >> /etc/apt/sources.list.d/w-rouesnel-openssh-hpn.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0762518E
apt-get update && apt-get -y upgrade
apt-get install -y openssh-server

# Setup openssh
mkdir /var/run/sshd
echo "HPNDisabled no" >> /etc/ssh/sshd_config
echo "TcpRcvBufPoll yes" >> /etc/ssh/sshd_config
echo "HPNBufferSize 8192" >> /etc/ssh/sshd_config
echo "NoneEnabled yes" >> /etc/ssh/sshd_config
