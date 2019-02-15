#!/bin/bash
for i in $*
do
   fact=1
   num=$i
while [ $num -gt 0 ]
do
   fact=`expr $fact \* $i`
   num=`expr $num - 1`
done
   echo "Factorial of $i is :$fact"
done
