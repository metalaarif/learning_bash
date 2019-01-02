#!/bin/bash
# another validation technique

read -p "Please enter your DOB [YYYY]: " DOB
while [[ ! $DOB =~ [0-9]{4} ]]
do
	read -p "Bastard type Year not JPT: " DOB
done
echo "Your DOB is $DOB"
