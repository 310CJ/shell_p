#!/bin/bash
echo "___Sum of Digits___"
echo "Enter the Number:- "
read num
input=$num
sum=0
while [ $num -ne 0 ]
do
    sum=$((sum + num%10))
    num=$((num/10))
done
echo "Sum of Digits ${input} = $sum"