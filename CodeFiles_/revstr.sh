#!/bin/bash
echo "Enter String:~ "
read str
reverse=""
len=$(#str)
# for (( i=$len-1; i>=0; i-- ))
for i in $(seq $((len-1)) -1 1)
do
    reverse="$reverse{str:$i:1}"
done
echo $reverse