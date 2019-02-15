#!/bin/bash

echo "Enter the any one numbers from 1 to 4"
read number
case $number in 

1)echo "This is one"
;;

2)echo "This is two"
;;

3)echo "This is three"
;;

*)echo "This is invalid"
;;
esac
