#!/bin/bash

# Learning how to use date in bash
fullyeardate=$(date +"%d-%m-%Y")
halfyeardate=$(date +"%d-%m-%y")
echo "Today's date is" $fullyeardate
echo "Today's date is" $halfyeardate
namedate=$(date +"%d-%h-%Y")
echo $namedate
currenttime=$(date +"%I:%M:%S")
echo "Current Time is" $currenttime
echo "The current time is $currenttime and today's date is $namedate"

# Learning how to use printf

today=$(date +"%d-%h-%Y")
time=$(date +"%I:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s\nTime:\t\t%s\n" $USER $today $time
echo $d
echo "$d"	# To preserve the new lines, if you don't put double quote, it will appear in same line. 
