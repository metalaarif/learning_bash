#!/bin/bash

i=1
while read f; do
	echo "Line $i: $f"
	((i++))
done < test1.txt

