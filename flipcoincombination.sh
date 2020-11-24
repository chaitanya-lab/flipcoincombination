#!/bin/bash -x
ct=0
ct1=0
ct2=0
for ((i=1;$i<11;i++))
do
Toss=$(($RANDOM%2))
ct=$(($ct + 1))
if [ $Toss -eq 0 ]
then

	ct1=$(($ct1 + 1))
	per1=$(( $ct1/$ct * 100 ))
else

	ct2=$(($ct2 + 1))
	per2=$(( $ct2/$ct * 100 ))
fi
done
echo "number of Times Head :$ct1"
echo "number of Times tail :$ct2"
arr[0]="HEAD:$per1"
arr[1]="TAIL:$per2"
echo ""
echo "${arr[@]}"
