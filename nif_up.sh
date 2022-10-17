#!/bin/bash

# mac address of ethernet
mac_ad=$(cat /sys/class/net/eth0/address)

#echo $mac_ad


# find ip address
ip_ad=$(ip route get 8.8.8.8 | sed -n '/src/{s/.*src *\([^ ]*\).*/\1/p;q}')

#echo $ip_ad

# writing mac and ip to file
echo -e {"\n\t""\"mac"\": \"$mac_ad\","\n\t""\"ip"\": \"$ip_ad\""\n"} > /tmp/network_address
