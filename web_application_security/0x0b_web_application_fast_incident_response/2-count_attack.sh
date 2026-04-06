#!/bin/bash
cat logs.txt | awk '{print$1}' | grep '[.]' | sort | uniq -c | tail -1 | awk '{print$1}'
