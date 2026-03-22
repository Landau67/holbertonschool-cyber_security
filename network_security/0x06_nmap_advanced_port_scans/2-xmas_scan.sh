#!/bin/bash
sudo nmap -sX 440-450 --reason --open --packet-trace $1
