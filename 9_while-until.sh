#!/bin/bash
# while loop
i=0
while [ $i -le 5 ]; do
	echo "i:$i"
	((i+=1))
done

x=5
while [ $x -gt 0 ]; do
	echo "x:$x"
	((x-=1))
done

j=0
until [ $j -ge 5 ]; do
	echo j:$j
	((j+=1))
done
