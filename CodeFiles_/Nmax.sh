#!/bin/bash
`sort -n max.txt > max1.txt`
i=10
while [ $i != 1 ]
do
echo `(tail -$i max1.txt)`
i=$((i-1))
done
