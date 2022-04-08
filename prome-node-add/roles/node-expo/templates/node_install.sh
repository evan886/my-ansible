#!/bin/bash
sudo curl -Lo /etc/yum.repos.d/_copr_ibotty-prometheus-exporters.repo https://copr.fedorainfracloud.org/coprs/ibotty/prometheus-exporters/repo/epel-7/ibotty-prometheus-exporters-epel-7.repo
sudo sleep 4
sudo  yum install node_exporter -y
sudo sleep 4
sudo systemctl  start node_exporter && sudo  systemctl enable node_exporter
 sudo  rm  $0

#bak cong
#sudo sed  -i 's/127.0.0.1/172.16.0.42/g'  /etc/zabbix/zabbix_agentd.conf
#grep "^\s*[^# \t].*$" /etc/zabbix/zabbix_agentd.conf
