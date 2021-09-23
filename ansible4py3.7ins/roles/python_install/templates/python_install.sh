#!/bin/bash
# install python3.7.12
# yum tools

yum -y groupinstall "Development tools"
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
cd /usr/local/src
mkdir /usr/local/python37
tar -xvf  Python-3.7.12.tar.xz
cd Python-3.7.12
./configure --prefix=/usr/local/python37
make -j3  && make install
mv /usr/bin/python3 /usr/bin/python3bak
mv /usr/bin/pip3  /usr/bin/pip3bak
ln -s /usr/local/python37/bin/python3 /usr/bin/python3
ln -s /usr/local/python37/bin/pip3 /usr/bin/pip3
# end
