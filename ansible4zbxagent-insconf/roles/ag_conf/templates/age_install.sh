#!/bin/bash

sudo /usr/bin/rpm -ivh https://mirrors.aliyun.com/zabbix/zabbix/5.0/rhel/7/x86_64/zabbix-release-5.0-1.el7.noarch.rpm
sudo sleep 5
sudo /usr/bin/yum install zabbix-agent -y
sudo sleep 5
#bak cong
sudo sed  -i 's/127.0.0.1/172.16.0.42/g'  /etc/zabbix/zabbix_agentd.conf
sudo cp /etc/zabbix/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.confbakevan
sudo sed  -i "s/Hostname=Zabbix server/Hostname=${HOSTNAME}/g"  /etc/zabbix/zabbix_agentd.conf
#grep "^\s*[^# \t].*$" /etc/zabbix/zabbix_agentd.conf

sudo systemctl  enable  zabbix-agent.service
sudo systemctl restart zabbix-agent
