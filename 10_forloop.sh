#!/bin/bash
# For loop

for i in {1..5} 	# Used "brace expansion" for larger number for ex: {1..100}
do
	echo $i
done

#for j in {1..20..2}	# {1..20..2}, it means from 1 to 20 with 2 intervals
#do
#	echo $j
#done

for (( x=1; x<6; x++  ))
do
	echo $x
done

#array=("apple" "ball" "cat" "dog")	# array string, this is how we do it
#for y in ${array[@]}
#do
#	echo $y
#done

# Using Declare
declare -A array
array["Name"]="Aarif"
array["Id"]="1000"
for k in "${!array[@]}"	# to acccess key and value
do	
	echo "$k: ${array[$k]}"
done
