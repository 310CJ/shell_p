#!/bin/bash

# Read the array from user input
read -p "Enter the array elements separated by space: " -a arr

# Initialize sum to 0
sum=0

# Loop over the elements of the array and add them to the sum
for i in "${arr[@]}"
do
    sum=$(($sum + $i))
done

# Print the sum
echo "The sum of the array elements is: $sum"
