#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#Check Root
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }

#Stop ShadowsocksR
bash /usr/local/shadowsocksrr/stop.sh

#Delete Files
rm -rf /usr/local/SSRR-Bash-Python
rm -rf /usr/local/shadowsocksrr
rm -rf /usr/local/bin/ssrr