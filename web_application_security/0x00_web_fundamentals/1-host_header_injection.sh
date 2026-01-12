#!/bin/bash
curl -s -X POST -H "Host: $1" -d "$3" "$2"
