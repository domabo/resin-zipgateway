#!/bin/bash -e

echo "Enabling ZIPGATEWAY service"
systemctl enable zipgateway

MAC=$(cat /sys/class/net/eth0/address)
echo "Cloning MAC address $MAC"
echo "  bridge_hw $MAC" >> /etc/network/interfaces.d/br-lan

/usr/local/bin/zinf
/usr/local/sbin/zipgateway