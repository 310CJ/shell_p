#!/bin/bash

# Read the number from user input
read -p "Enter a number: " num

# Check if the number is divisible by any number other than 1 and itself
for (( i=2; i<$num; i++ ))
do
    if [ $(($num % $i)) -eq 0 ]
    then
        echo "$num is not a prime number."
        exit 0
    fi
done

# If the loop completes without finding a divisor, the number is prime
echo "$num is a prime number."
