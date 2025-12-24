#!/bin/bash
whois "$1" | awk -F: '/^(Registrant|Admin|Tech)/ { gsub(/\r/, ""); key=$1; val=substr($0, index($0, ":")+1); gsub(/^ */, "", val); if (key ~ /Street/) val = val " "; if (key ~ /Ext/) key = key ":"; print key "," val }'
