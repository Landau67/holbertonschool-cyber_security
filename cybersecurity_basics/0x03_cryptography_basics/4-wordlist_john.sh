#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt $1 --format=Raw-MD5 && john --show --format=Raw-MD5 $1 | cut -d ":" -f 2 > 4-password.txt
