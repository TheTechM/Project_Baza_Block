#!/bin/bash

iptables -F

iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

iptables -A INPUT -p tcp --dport 5000 -j ACCEPT
iptables -A INPUT -p tcp -s 192.168.1.73 --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -s 127.0.0.1 --dport 5432 -j ACCEPT
