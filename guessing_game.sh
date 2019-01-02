#!/bin/bash

#Write a simple guessing game
num=5
read -p "Guess a number please between [0 - 9]: " guess
#while [[ ! $guess =~ [0-9]{1} ]]
function guess {
if [ "$num" == "$guess" ]
then
	echo "You have guess right number $guess."
else
	echo "Please try again: "
}
guess 


