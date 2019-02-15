#!/bin/bash

case $1 in 

Mon|mon) echo "creating a file temp1"
	   touch temp-1
;;
Tue|tue) echo "copying a file temp-1 to temp-2" ; cp temp-1 temp-2
;;
Wed|wed) echo "moving a file temp-2 to temp-3" ; mv temp-2 temp-3
;;
Thu|thu) echo "copying a file temp-3 to temp-4" ; cp temp-3 temp-4
;;
Fri|fri) echo "removing a file temp-1, temp-2, temp-3, & temp-4" ; rm temp-1 temp-2 temp-3 temp-4
;;
sat|sun) echo "Today is holiday"
;;
*) echo "This is invalid"
;;
esac

