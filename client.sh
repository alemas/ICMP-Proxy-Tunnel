#!/bin/sh

# Assigining an IP address and mask to 'tun0' interface
ifconfig tun0 mtu 1472 up 10.0.1.2 netmask 255.255.255.0

# Modifying IP routing tables
route del default
# 'server' is the IP address of the proxy server
# 'gateway' and 'interface' can be obtained by usint the command: 'route -n'
route add -host 10.32.143.159 gw 10.32.143.1 dev enp3s0
route add default gw 10.0.1.1 tun0
