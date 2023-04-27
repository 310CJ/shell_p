#!/bin/bash

echo "Enter the array elements (space-separated): "
read -a arr

echo "Enter the number to search for: "
read num

found=0
for i in "${!arr[@]}"
do
  if [ "${arr[$i]}" = "$num" ]
  then
    echo "Number $num found at index $i"
    found=1
    break
  fi
done

if [ $found -eq 0 ]
then
  echo "Number $num not found in the array"
fi
