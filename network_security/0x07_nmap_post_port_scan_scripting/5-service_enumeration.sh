#!/bin/bash
nmap -A --script banner default ssl-enum-ciphers smb-enum-domains $1 -oN service_enumeration_results.txt
