#!/bin/bash
#set -x
   echo "Enter name to check"
read name
 
if [ -f $name ];then
   echo "$name is file"
elif [ -d $name ];then
   echo "$name is diectory"
elif [ -L $name ];then
   echo "$name is link"
else 
   echo "$name is dose not exist"
fi
