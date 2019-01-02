#!/bin/bash

# Validation Checker

#if [ $# -lt 3 ]
#then
#	cat <<- EOM
#	You need to input three things:
#	Username, UserID and Password.
#	EOM
#else
#	# Main program is here
#	echo "Username: $1"
#	echo "UserID: $2"
#	echo "Password: $3"
#fi

read -p "Enter animal name [Donkey]: " a
while [[ -z "$a" ]]
do
	a="Donkey"	# this way if user doesn't type default value will be chosen which is "Donkey"
#	read -p "You better answer me bastard! " a
done
echo "$a was selected"
