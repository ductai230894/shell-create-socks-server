#!/bin/bash
echo "running socks scripts"

wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh 
bash install.sh

firewall-cmd --zone=public --add-port=2016/tcp --permanent
firewall-cmd --reload

sed -i 's/pam/none/g' /etc/danted/sockd.conf
service sockd reload
service sockd restart
