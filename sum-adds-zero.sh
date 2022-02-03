#!/bin/bash -x

arr=(7 8 9 -5 6 -4)
x=(${#arr[@]})

echo $x



found=0

for((i=0; i<x-2; i++))
do

for((j=i+1; j<x-1; j++))

do

for((k=j+1; k<x; k++))

do

if [ $((arr[$i]+arr[$j]+arr[$k])) -eq 0 ]

then

echo ${arr[$i]}

echo ${arr[$j]}

echo ${arr[$k]}

found=0

fi

done

done

done

if [ $found -eq 1 ]
then
echo "not exist"

fi





