#!/bin/bash

#Another way to input using select loop

select creatures in "Tiger" "Whale" "Octasauraus" "exit"
do
	case $creatures in
		Tiger) echo "You selected the most strongest and dangerous animal";;
		Whale) echo "You selected Water Animal";;
		Octasauraus) echo "Some kind of Dinosaurs";;
		exit) break;;
		*) echo "Opps! Something is broken";;
	esac
done
