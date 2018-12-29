#!/bin/bash
# Learning Bash
a=Aarif
b=$(pwd)
echo I am $a and I am currently at $b
p=$(sudo ping -c 1 mangadex.org | grep "from" | cut -d = -f 4)
echo Hi! $a, mangadex.org is pinging at $p

# Arithmetic Operator
c=10001
d=$((c*24)) #to perform arithemtic operation in bash always use double bracket ((
echo "Arithmetic Operator: "$d
# bash doesn't understand float, it only understands float. 
# but to do float we can use "bc" program
e=$((1/3))
echo $e
f=$(echo 1/3 | bc -l)	# can use "bc" like this to get float result. remember only single braket (
echo $f

# Comparison Operators
[[ "dog" == "dog" ]]
echo $?
[[ "cat" == "dog" ]]
echo $?
[[ 20 > 100 ]]	# 20 greater than 100, it should be false but it is coming true, because it think 20 is string not integer
echo $?
# for integer we need to use gt (greater than) [[ $a -gt $b ]], ge (greater than or equals), lt (less than), eq (equal), ne (not equal)
[[ 20 -gt 100 ]] 	
echo $?

#String Null Value
# Is Null is represented by [[ -z $a ]]
# Is not null is represented by [[ -n $a ]]
g=""
h="cat"
[[ -z $g && -n $h ]]
echo $?

