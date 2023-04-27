#!/bin/bash

# Initialize max to the first number
read -p "Enter a number: " num
max=$num

# Iterate over the remaining 9 numbers
for i in {2..10}
do
    read -p "Enter a number: " num
    
    # Check if the current number is greater than the current maximum
    if [ $num -gt $max ]
    then
        max=$num
    fi
done

# Print the maximum
echo "The maximum number is: $max"
