#!/bin/bash
nmap --script=vulners -p80,443 $1
