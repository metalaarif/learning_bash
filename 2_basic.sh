#!/bin/bash
# Again learning Bash

# Concatenation
a="hell0"
b="world"
c=$a$b			
echo $c

d="AarifKamarKhan"
e="AprillynDionaGomez"
f=${d:5}		# it will start printing after 5th letter
echo $f
g=${e:8:5}		# here asking it to print from variable e, starting from 8 and print upto 5 letters only
echo $g
h=${d: -4}		# here if we use -4 it will print last 4 world but need space after ${d: -4}
echo $h
echo ${#e}		# ${#a} will count the letter including space

#Replacing text in strings
fruit="apple, banana, cherry, dragonfruit"
echo $fruit
echo "replacing banana >>" ${fruit/banana/berries}
echo "replacing 1st fruit apple >>" ${fruit/#apple/apricot}	# to replace front you can use #, if it doesn't exit it won't change
echo "replacing the end fruit >>" ${fruit/%dragonfruit/durian}	# to replace last you can use %, if it doesn't exist it won't change
