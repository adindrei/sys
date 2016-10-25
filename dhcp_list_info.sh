#!/bin/bash

grep -i "fixed-address 192.168.68.*" /etc/dhcp/dhcpd.conf |sort |uniq |wc -l

grep -i "fixed-address 192.168.201.*" /etc/dhcp/dhcpd.conf |sort |uniq |wc -l
