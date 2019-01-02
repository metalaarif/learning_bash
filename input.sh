#!/bin/bash

# User Input

echo "What is your name?"
read name

echo "Type in your password"
read -s pass

read -p "What is your fav colour: " colour

echo "Hi Mr. $name, your hacked password is $pass and your fav colour is $colour"
