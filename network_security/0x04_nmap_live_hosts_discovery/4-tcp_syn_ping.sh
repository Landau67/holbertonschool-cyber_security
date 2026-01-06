#!/bin/bash
sudo nmap -p22,80,443 -sn -PS $1
