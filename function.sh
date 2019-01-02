#!/bin/bash
# Function in Bash

#function greet {
#	echo "Hi, $1 $2"
#}
#
#echo "The Greetings"
#greet Aarif, "it is evening"

function listnumber {
	i=1
	for x in $@; do
		echo $i: $x
		((i+=1))
	done
}

listnumber $(ls)
