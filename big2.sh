#!/bin/bash
if [ $# -eq 0 ];then
echo "pass any 2 arguments"
exit 1

elif [ $# -ne 2 ]; then
echo "pass only 2 arguments"
exit 1

elif [ $1 -gt $2 ];then
echo "$1 is big"

else
echo "$2 is big"

fi
