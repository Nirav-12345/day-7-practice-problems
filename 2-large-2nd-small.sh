#!/bin/bash -x

a=0

b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))
b[((a++))]=$((RANDOM%110+100))

echo ${b[@]}

#Store it into an array

x[10]=${b[@]}

echo ${x[@]}


min=200
max=0

for num in ${x[@]}

do



if [ $num -gt $max ]

then

	max=$num

fi

if [ $num -le $min ]

then

	min=$num
fi


done


echo "2nd largest element" $max and "2nd lowest element" $min
