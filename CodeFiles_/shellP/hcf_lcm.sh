#!/bin/bash
echo -n "Enter 2 Numbers: "
 read a b
p=$(($a*$b))
while [ $b -ne 0 ]
do
	r=$(($a%$b))
	a=$b
	b=$r
done
lcm=$(($p/$a))
echo "LCM = $lcm HCF = $a"


