#!/bin/bash
echo -e "hi \n   please take approprite action to your server instance because momery of disk is used 90% \n thank you \n regards\n Gagantej" >mailbody


mem=`df -h . |tail -1 |awk -F " " '{print $(NF - 1)}' | sed 's/%//g'`
if [ $mem -gt 9 ]; then

cat mailbody |mail -s "Memory reched 90%" alapatigagan@gmail.com

fi
