#!/bin/bash
# install golang
# yum tools

yum -y groupinstall "Development tools"
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
cd /usr/local/src
tar -C /usr/local -xzf go1.17.1.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin'  >> /etc/profile 
source  /etc/profile
# end
