#!/bin/bash
hashcat -m 0 $1 wordlist3.txt  && hashcat --show -m 0 $1 | cut -d: -f2  > 9-password.txt
