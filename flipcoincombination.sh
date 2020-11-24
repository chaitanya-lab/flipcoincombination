#!/bin/bash -x
ct=0
ct1=0
ct2=0
ct3=0
ct4=0
for ((i=1;$i<11;i++))
do
Toss=$(($RANDOM%4))
ct=$(($ct + 1))
if [ $Toss -eq 0 ]
then

	ct1=$(($ct1 + 1))
	per1=$(( $ct1/$ct * 100 ))
elif [ $Toss -eq 1 ]
then
	
	ct2=$(($ct2 + 1))
	per2=$(( $ct2/$ct * 100 ))
elif [ $Toss -eq 2 ]
then
	ct3=$(($ct3 + 1))
	per3=$(($ct3/$ct * 100))
elif [ $Toss -eq 3 ]
then
	ct4=$(($ct4 + 1 ))
	per4=$(($ct4/$ct * 100))
fi
done
echo "number of Times HH :$ct1"
echo "number of Times HT :$ct2"
echo "number of Times TH : $ct3"
echo "number of Times TT : $ct4"
arr[0]="HH:$per1"
arr[1]="HT:$per2"
arr[2]="TH:$per3"
arr[3]="TT:$per4"
echo ""
echo "${arr[@]}"
