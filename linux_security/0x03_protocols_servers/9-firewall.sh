#!/bin/bash
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -P INPUT DROP
