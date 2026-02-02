#!/bin/bash
echo -n $1$(openssl rand -hex 8) | sha256sum > 3_hash.txt
