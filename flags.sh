#!/bin/bash
# Using Flags

while getopts :u:p: option; do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		?) echo "Opps! don't know what $OPTARG means"
	esac
done

echo "User: $user / Pass: $pass"
