#!/bin/bash -x
Toss=$(($RANDOM%2))
if [ $Toss -eq 0 ]
then
	echo "++++HEAD+++"
else
	echo "+++TAIL+++"
fi
