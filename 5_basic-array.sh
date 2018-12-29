#!/bin/bash

# using array and declare
a=()
b=("apple" "banana" "carrot")
echo ${b[2]}		#array indexes always starts from 0

b+=("pineapple")	# this will add an array at the END
b[5]="kiwi"		# this way we can specify indexes of an array
echo $b			# if you just do echo $b it will print the first string
echo ${b[@]}		# doing this will print all array

declare -A myarray	# "KEY & VALUE", declare "myarray" key ==> colour and office address, value ==> blue and ridgmount street

myarray[colour]=violet
myarray["office address"]="Ridgmount Street"

echo ${myarray["office address"]} looks like ${myarray[colour]} 
