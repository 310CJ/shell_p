#!/bin/bash

# Read the number from user input
read -p "Enter a number: " num

# Calculate the number of digits in the number
n=${#num}

# Initialize the sum variable to 0
sum=0

# Loop over each digit in the number and raise it to the power of n
for (( i=0; i<$n; i++ ))
do
    digit=${num:$i:1}
    (( sum += digit ** n ))
done

# Check if the sum is equal to the original number
if [ $sum -eq $num ]
then
    echo "$num is an Armstrong number."
else
    echo "$num is not an Armstrong number."
fi
