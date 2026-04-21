#!/bin/bash
nmap --script=http-vuln-cve2017-5638,ftp-anon,ssl-enum-ciphers $1 -oN comprehensive_scan_results.txt
