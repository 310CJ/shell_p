#!/bin/bash

# Read the array from user input
read -p "Enter the array elements separated by space: " -a arr

# Initialize the counters for even and odd elements
even=0
odd=0

# Loop over the elements of the array and increment the appropriate counter
for i in "${arr[@]}"
do
    if [ $(($i % 2)) -eq 0 ]
    then
        even=$(($even + 1))
    else
        odd=$(($odd + 1))
    fi
done

# Print the number of even and odd elements
echo "The number of even elements is: $even"
echo "The number of odd elements is: $odd"
