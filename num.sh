#!/bin/bash
  # num=$1
echo "Enter number"
read num
echo "Entered number is : $num"
while [ $num -gt 0 ]
do 
   echo "$num"
   num=`expr $num - 1`
done
