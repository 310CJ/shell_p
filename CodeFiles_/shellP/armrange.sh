#!/bin/bash

# Read the range from user input
read -p "Enter the range (format: start end): " start end

# Loop over the range of numbers and check if each number is an Armstrong number
for (( i=$start; i<=$end; i++ ))
do
    # Initialize variables for the sum and number of digits
    num=$i
    sum=0
    n=${#num}

    # Calculate the sum of the digits raised to the power of n
    while [ $num -gt 0 ]
    do
        digit=$(($num % 10))
        sum=$(($sum + ($digit ** $n)))
        num=$(($num / 10))
    done

    # Check if the sum equals the original number
    if [ $sum -eq $i ]
    then
        echo "$i is an Armstrong number."
    fi
done
