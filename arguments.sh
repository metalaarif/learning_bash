#!/bin/bash
#Arguments

echo $i		# here taking single argument
echo $2

for i in $@		# with the help of for loop and $@ it will take unlimited number of argument
do
	echo $i
done

echo "Total $# arguments"
