#!/bin/bash
hashcat -m 0 -a 0 hash.txt /usr/share/wordlists/rockyou.txt $1 && hashcat --show -m 0 $1 | cut -d: -f2 > 7-password.txt
