#!/bin/bash
hash=$(sha256sum -c $1 | awk '{print $1}');[ "$hash" = "$2" ] && echo "$1: OK" || echo "$1: FAIL"
