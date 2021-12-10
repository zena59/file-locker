#!/bin/bash
echo -e "enter the password"
read A
B="zena"
if [ $A = $B ]; then
	echo you are logged in
else
	{
	echo -e "inncorect password" 
	exit
	}
fi	
YES="y"
file="./system2"
if [ -e $file ]; then
	echo "system2 folder exists"
else 
	{
	echo -e "system2 folder does not exists
do you want to create system2 folder(y/n)?"
	read REP
	if [ $REP = $YES ]; then
		{
		echo "system2 folder has been created"
		mkdir system2
		}
	else
		{
		echo "system2 folder is not created and hence unavailable. please create system2 folder to continue"
		exit
		}
	fi
	}
fi 

echo -e "Enter the operaton:
       lock
       unlock"

read C
X="lock"
Y="unlock"

if [ $C = $X ]; then
	{
	sudo chmod 700 system2
	sudo chown root:root system2
	echo system2 folder has been locked
	exit
	}
else
	{
	if [ $C = $Y ]; then
		{
		sudo chmod 777 system2
		sudo chown $USER:$USER system2
		echo system2 folder has been unlocked
		exit
		}   
	else
		{
		echo what the hell did you enter
		exit
		}
	fi
	}

fi
