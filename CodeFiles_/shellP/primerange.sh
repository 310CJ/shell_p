#!/bin/bash

# Read the range from user input
read -p "Enter the range (format: start end): " start end

# Loop over the range of numbers and check if each number is prime
for (( i=$start; i<=$end; i++ ))
do
    is_prime=true

    # Check if the number is divisible by any number other than 1 and itself
    for (( j=2; j<$i; j++ ))
    do
        if [ $(($i % $j)) -eq 0 ]
        then
            is_prime=false
            break
        fi
    done

    # Print the number if it is prime
    if $is_prime
    then
        echo "$i is a prime number."
    fi
done
