#!/bin/bash
nmap --script banner default ssl-enum-ciphers smb-enum* $1 -oN service_enumeration_results.txt
