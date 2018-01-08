#/bin/sh
#Check Root
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
echo "##################################
      SSRR-Bash-Python 自检系统
             V1.0 Alpha
           Author:lllvcs
##################################"
#List /usr/local
echo "############Filelist of /usr/local" >> /root/report.json
cd /usr/local
ls >> /root/report.json
#List /usr/local/ssrr-bash-python
echo "############Filelist of /usr/local/SSRR-Bash-Python" >> /root/report.json
cd /usr/local/SSRR-Bash-Python
ls >> /root/report.json
#List /usr/local/shadowsocksrr
echo "############Filelist of /usr/local/shadowsocksrr" >> /root/report.json
cd /usr/local/shadowsocksrr
ls >> /root/report.json
echo "############File test">>/root/report.json
#Check File Exist
if [ ! -f "/usr/local/bin/ssrr" ]; then
  echo "SSRR-Bash-Python主文件缺失，请确认服务器是否成功连接至Github"
  echo "SSRR Miss" >> /root/report.json
  exit
fi
if [ ! -f "/usr/local/SSRR-Bash-Python/server.sh" ]; then
  echo "SSRR-Bash-Python主文件缺失，请确认服务器是否成功连接至Github"
  echo "SSRR Miss" >> /root/report.json
  exit
fi
if [ ! -f "/usr/local/shadowsocksrr/stop.sh" ]; then
  echo "SSRR主文件缺失，请确认服务器是否成功连接至Github"
  echo "SSRR Miss" >> /root/report.json
  exit
fi

#Firewall
echo "############Firewall test" >> report.json
iptables -L >> /root/report.json

echo "检测完成，未发现严重问题，如仍有任何问题请提交report.json"
