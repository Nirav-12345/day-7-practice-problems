#!/bin/bash -x

x=0

c=0

for((i=10; i<100; i++))

do

if [ $((i%10)) -eq $(((i/10)%10)) ]

then

x[c++]=$i


fi

done

echo "similar digits are" ${x[@]}

