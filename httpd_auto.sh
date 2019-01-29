#!/bin/bash
yum   install   httpd  -y
echo  hello   >/var/www/html/index.html 
service  httpd  start
chkconfig  httpd  on
useradd   new
echo  linux   |    passwd  new  --stdin 
sed  -i   's/PasswordAuthentication no/PasswordAuthentication yes/g'    /etc/ssh/sshd_config 
service  sshd   restart
