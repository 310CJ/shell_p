#!/bin/bash

# Read the string from user input
read -p "Enter a string: " str

# Reverse the string using the rev command
rev=$(echo $str | rev)

# Print the reversed string
echo "The reversed string is: $rev"
