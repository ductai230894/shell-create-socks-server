#!/bin/bash
echo "running socks scripts"

curl -L -O https://raw.github.com/Lozy/danted/master/install.sh 
bash install.sh --ip="$1"


sed -i 's/pam/none/g' /etc/danted/sockd.conf
service sockd reload
service sockd restart
