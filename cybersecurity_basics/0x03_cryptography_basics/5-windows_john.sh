#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt $1 --format=NT && john --show --format=NT $1 | head -n -2 | cut -d: -f2 > 5-password.txt
