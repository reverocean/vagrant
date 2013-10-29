#!/bin/bash  
cat >/etc/hosts <<EOF 
127.0.0.1       localhost  
  
# The following lines are desirable for IPv6 capable hosts  
::1     ip6-localhost ip6-loopback  
fe00::0 ip6-localnet  
ff00::0 ip6-mcastprefix  
ff02::1 ip6-allnodes  
ff02::2 ip6-allrouters

192.168.56.200	master
192.168.56.201	slave1
192.168.56.202	slave2
192.168.56.203	slave3
EOF