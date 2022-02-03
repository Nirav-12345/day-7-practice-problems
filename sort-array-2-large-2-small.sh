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

x=(${b[@]})

echo ${x[@]}






#Sorting an array

for((i=0; i<10; i++))

do



for((j=0; j<10-i-1; j++))

do

if [ ${x[j]} -gt ${x[$((j+1))]} ]


then


temp=${x[j]}

x[$j]=${x[$((j+1))]}


x[$((j+1))]=$temp



fi

done

done





echo "Array in sorted order" ${x[@]}










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
