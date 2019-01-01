#!/bin/bash
# Doing if else statement. 
# Comparing numbers
a=9
b=6
if [ $a -gt $b ]; then
	echo "$a is greater $b"
else
	echo "$b is greater $a"
fi

# Comparing string and searching for number
x="I am all text only but my fav number is 89"
if [[ $x =~ [0-9]+ ]]; then		# here I used regular expression to search if the string has any integer
	echo "I don't know which but there is a number in the text: $x"
else
	echo "Opps! there is no number or integer in the text: $x"
fi
