#!/bin/bash

# Get the array from user input
read -p "Enter the array elements separated by space: " -a arr

# Get the length of the array
len=${#arr[@]}

# Iterate over each element of the array
for ((i=0; i<$len-1; i++))
do
    # Find the minimum element in the unsorted portion of the array
    min_idx=$i
    for ((j=i+1; j<$len; j++))
    do
        if [ ${arr[$j]} -lt ${arr[$min_idx]} ]
        then
            min_idx=$j
        fi
    done

    # Swap the minimum element with the first element of the unsorted portion of the array
    temp=${arr[$i]}
    arr[$i]=${arr[$min_idx]}
    arr[$min_idx]=$temp
done

# Print the sorted array
echo "Sorted array:"
for ((i=0; i<$len; i++))
do
    echo ${arr[$i]}
done
