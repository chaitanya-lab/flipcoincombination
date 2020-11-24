#!/bin/bash -x
ct=0
ct1=0
ct2=0
ct3=0
ct4=0
ct5=0
ct6=0
ct7=0
ct8=0
for ((i=1;$i<20;i++))
do
Toss=$(($RANDOM%8))
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
elif  [ $Toss -eq 4 ]
then
        ct5=$(($ct5 + 1))
        per5=$(( $ct5/$ct * 100 ))
elif  [ $Toss -eq 5 ]
then
        ct6=$(($ct6 + 1))
        per6=$(( $ct6/$ct * 100 ))


elif  [ $Toss -eq 6 ]
then
        ct7=$(($ct7 + 1))
        per7=$(( $ct7/$ct * 100 ))

elif  [ $Toss -eq 7 ]
then
        ct8=$(($ct8 + 1))
        per8=$(( $ct8/$ct * 100 ))
fi
done
echo "number of times HHH comes: $ct1"
echo "number of times HHT comes: $ct2"
echo "number of times HTH comes: $ct3"
echo "number of times HTT comes: $ct4"
echo "number of times THH comes: $ct5"
echo "number of times THT comes: $ct6"
echo "number of times TTH comes: $ct7"
echo "number of times TTT comes: $ct8"
arr[0]="HHH:$per1 : "
arr[1]="HHT:$per2 : "
arr[2]="HTH:$per3 : "
arr[3]="HTT:$per4 : "
arr[4]="THH:$per5 : "
arr[5]="THT:$per6 : "
arr[6]="TTH:$per7 : "
arr[7]="TTT:$per8 : "

echo ""
echo "${arr[@]}"

