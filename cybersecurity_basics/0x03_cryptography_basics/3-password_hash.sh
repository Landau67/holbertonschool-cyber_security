#!/bin/bash
SALT=$(openssl rand -hex 8)
echo -n $1$SALT | sha256sum > 3_hash.txt
