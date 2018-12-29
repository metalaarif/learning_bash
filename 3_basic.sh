#!/bin/bash

# Colour Styling
# echo -e (escape) start with double quote "
# \033 is a escape code, it needs to start with \033 and end with \033
# followed with [5 for blinking, it goes from 1 till 7; 42 for foreground, 31 for background
# then end that string with "m"
# then type the string message "Danger", now end it with escape code \033
# then [0m then end it
echo -e "\033[5;42;31mDANGER\033[0m"
echo -e "\033[2;31;40mERROR: \033[0m \033[5;31;42mOpps something when wrong.\033[0m"

# We can declare it in a variable to make our life easier

red="\033[2;31;40m"
green="\033[5;42;31m"
none="\033[0m"
echo -e $red"DANGER AARIF"$none$green "Opps Something went wrong"$none

# Another way to do it via "tput"

blue=$(tput setab 0; tput setaf 4; tput blink)
yellow=$(tput setab 0; tput setaf 3) 
nothing=$(tput sgr0)
echo -e $blue"DANGER AARIF"$nothing$yellow "Opps something went wrong"$nothing
