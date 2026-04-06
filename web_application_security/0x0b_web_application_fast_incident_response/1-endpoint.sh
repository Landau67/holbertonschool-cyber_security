#!/bin/bash
cat logs.txt | awk '{print$7}' | uniq -c | sort | tail -1 | awk '{print$2}'
