#!/bin/bash
while true
do
   clear
   echo "======================================"
   echo "-----------------MENU-----------------"
   echo "======================================"
   echo "Below In The Menu"
   echo -e "1)Check Name\n2)Creat Link\n3)Search Word\n4)Find File\n5)Edit File\n6)Exit\n"
   echo -e "Select Your Option You Want \c"
   read opt
case $opt in
	1) sh /home/ec2-user/scripts/checkname.sh 
	;;

	2)echo -e "Enter File Name To Create Link \c"
		read file
	if [ ! -f $file ]; then
		echo "$file is does not exist"
		exit 1
	fi
		echo -e "Enter Link Name \c"
		read link
	if [ -L $link ]; then
		echo "$link is already exists"
		exit 1
	fi
		ln -s $file $link
	;;

	3)echo -e "Enter Word To Search \c"
		read word
		grep -l "$word"* >listword
	if [ $? -eq 0 ]; then
		echo "$word is found in below files"
		cat listword ; rm listword
	else
		echo "$word is not found"
	fi
	;;

	4)echo -e "Enter Filename To Find It's Location \c"
		read file 
		find /home -iname "$file" >locationfile
	if [ $? -eq 0 ]; then
		cat locationfile ; rm locationfile
	else
		echo "$file is not found"
	fi
	;;

	5)echo -e "Enter File To Edit \c"
		read file 
	if [ -f $file ]; then
		vim $file
	else
		echo "$file does not exist"
		echo "do you want create new file Yes/No"
		read choice
	if [ $choice == "Yes" ]; then
		vim $file
	fi
	fi	
	;;
	*) exit 1
	;;
esac
done
