#!/bin/bash
echo "================================================"
while :
do
	azar=`echo $(($RANDOM%100))`
	r=$azar/100
	./circle.sh $r
	sleep 1
done