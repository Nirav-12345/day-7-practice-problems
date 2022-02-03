#!/bin/bash -x

read x
c=0
prime=$x
for((i=2; i<=x; i++))
do

if [ $((x%i)) -eq 0 ]

then

flag=0

for((j=2; j<=i/2; j++))

do

if [ $((i%j)) -eq 0 ]

then

flag=1
break


fi

done





if [ $flag -eq 0 ]

then
prime[((c++))]=$i


fi



fi

done

echo ${prime[@]}

