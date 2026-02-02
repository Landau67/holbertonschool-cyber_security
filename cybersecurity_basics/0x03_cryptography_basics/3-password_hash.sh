#!/bin/bash
echo -n $1$(openssl rand -hex 8) | sha512sum > 3_hash.txt
