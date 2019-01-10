#!/bin/bash
# Substracting different dates
# 2 way user input date difference
d1=$(date -d "$1" +%s)
d2=$(date -d "$2" +%s)
echo $(( (d1 - d2) / 86400 )) days

# only 1 user date difference
#x=$(date +%d%h)
#x1=$(date -d "$x" +%s)
#x2=$(date -d "$1" +%s)
#echo $(( (x2 - x1) / 86400 )) days
