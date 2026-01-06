#!/bin/bash
sudo nmap -p53,161,162 -sn -sU $1
