#!/bin/bash

# Read the string from user input
read -p "Enter a string: " str

# Reverse the string
rev=$(echo $str | rev)

# Compare the original string with the reversed string
if [ "$str" = "$rev" ]
then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi
