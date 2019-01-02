#!/bin/bash
# case statement
a="donkey"
b="wolf"
c="Elephant"
case $c in
	donkey) echo "Hiahhh Hiaaah";;
	dog|wolf|puppy)	echo "K9";;
	cat|meow) echo "felion";;
	*) echo "Opps! Mate No Match"
esac
