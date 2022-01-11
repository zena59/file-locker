#!/bin/bash


pas_folder=".local/share/.znxyzs"
if [ -e $pas_folder ]; then
	echo " "
else
	mkdir .local/share/.znxyzs
fi


pass=".local/share/.znxyzs/.owo.txt"


if [ -e $pass ];then
	{
	echo -e "Enter the password"
	read A
	sudo chmod 777 .local/share/.znxyzs/.owo.txt
	sudo chown $USER:$USER .local/share/.znxyzs/.owo.txt
	B=`cat .local/share/.znxyzs/.owo.txt`
	sudo chmod 700 .local/share/.znxyzs/.owo.txt
	sudo chown root:root .local/share/.znxyzs/.owo.txt
	if [ $A = $B ]; then
		echo -e "\nYou are logged in (≧▽≦)\n"
	else
		{
		echo "inncorect password (☉_☉)" 
		exit
		}
	fi
	}
else
	{
	touch .local/share/.znxyzs/.owo.txt
	echo -e "zena" >> .local/share/.znxyzs/.owo.txt
	echo -e "Enter the password"
	read A
	B=`cat .local/share/.znxyzs/.owo.txt`
	if [ $A = $B ]; then
		echo -e "\nYou are logged in (≧▽≦)\n"
		sudo chmod 700 .local/share/.znxyzs/.owo.txt
		sudo chown root:root .local/share/.znxyzs/.owo.txt
	else
		{
		echo -e "inncorect password (☉_☉)" 
		exit
		}
	fi
	}
	
fi



y="y"
txtdir=".local/share/.znxyzs/.nxyzd.txt"

if [ -e $txtdir ]; then
	{
#	value=`cat .znxyzs/.nxyzd.txt`
	file_exist=".local/share/.nxyz6798"
	if [ -e $file_exist ]; then
		{
		echo -e "\nLocked folder exist"
		}
	else	
		{
		value=`cat .local/share/.znxyzs/.nxyzd.txt`
		if [ -e $value ]; then
			{
			echo -e "\nUnlocked folder exist"
			}
		else
			
			{
			echo -e "\nLooks like locked folder has been deleted! (>.<)'  Restart the program"
			rm .local/share/.znxyzs/.nxyzd.txt
			exit
			}
		fi
		}
	fi
	}
	

		
else
	{
	echo -e "Type the folder name with directory you want to create[example: Downloads/homework/.hentai]"
	read filename
	file="./$filename"
	       if [ -e $file ]; then
			{
			echo -e "$filename folder already exists. Do you want to lock/unlock that folder?!(y/n)"
			read ans
			if [ $ans = $y ]; then
			{
				touch .local/share/.znxyzs/.nxyzd.txt
				echo "$filename" >> .local/share/.znxyzs/.nxyzd.txt
			}
			else
			{
				echo "Then what exactly do you want to do! \e[31m(>.<)\e[0m"
				exit
			}
			fi
			}
		else 
			{
				touch .local/share/.znxyzs/.nxyzd.txt
				mkdir $filename
				echo "$filename" >> .local/share/.znxyzs/.nxyzd.txt
				echo "$filename folder has been created! (≧▽≦)"
			}
		fi
	
	}
fi


X="lock"
Y="unlock"
#Z="delete-folder"
T="change-password"
R="reset"
value=`cat .local/share/.znxyzs/.nxyzd.txt`
lock_dir=".local/share/.nxyz6798"
bye="exit"





while true
do
{


echo -e "\nEnter the operaton:
       lock
       unlock
       change-password
       \e[31mreset\e[0m
       exit\n"

read C



if [ $C = $X ]; then
	{
	if [ -e $lock_dir ]; then
		{
		echo -e "\n\e[33mFolder is already locked! \e[0m \n"
		}
	else
		{
		mv /home/$USER/$value /home/$USER/.local/share/.nxyz6798
		sudo chmod 700 .local/share/.nxyz6798
		sudo chown root:root .local/share/.nxyz6798
		echo -e "\n\e[32mFolder has been locked! (✷‿✷)\e[0m \n"
		}
	fi
	}

elif [ $C = $Y ]; then
	{
	if [ -e  $lock_dir ]; then
		{
		sudo chmod 777 .local/share/.nxyz6798
		sudo chown $SUDO_USER:$SUDO_USER .local/share/.nxyz6798
		mv /home/$USER/.local/share/.nxyz6798 /home/$USER/$value
		echo -e "\n\e[32mFolder has been unlocked! (☉ ｡☉)! \e[0m \n"
		} 
	else
		{
		echo -e "\n\e[33mFolder is already unlocked! \e[0m \n"  
		}
	fi
	}
	

#elif [ $C = $Z ]; then
#	{
#	if [ -e $lock_dir ]; then
#	{
#		sudo chmod 777 .local/share/.nxyz6798
#		sudo chown $USER:$USER .local/share/.nxyz6798
#		mv /home/$USER/.local/share/.nxyz6798 /home/$USER/$value
#		rm -d $value
#		rm -d $txtdir
#		echo -e "\n\e[32mFolder has been deleted\e[0m \n"
#		exit
#	}
#	else
#	{
#		rm  -d $value
#		rm  -d $txtdir
#		echo -e "\n\e[32mFolder has been deleted\e[0m \n"
#		exit
#	}
#	fi
#	}

	
elif [ $C = $T ]; then
	{
		
		echo -e "Enter the new password:"
		read new_pass
		sudo chmod 777 .local/share/.znxyzs/.owo.txt
		sudo chown $USER:$USER .local/share/.znxyzs/.owo.txt
		>.local/share/.znxyzs/.owo.txt
		echo -e "$new_pass" >> .local/share/.znxyzs/.owo.txt
		sudo chmod 700 .local/share/.znxyzs/.owo.txt
		sudo chown root:root .local/share/.znxyzs/.owo.txt
		echo -e "\n\e[32mPassword has been changed\e[0m\n"
	}
	
elif [ $C = $R ]; then
	{
	echo -e "\n\e[31mDo you really want to reset?(y/n) 
Locked folders will be unlocked and password will be changed to default\n"
	read ANS
	if [ $ANS = $y ];then
		{
		if [ -e $lock_dir ]; then
			{
			sudo chmod 777 .local/share/.nxyz6798
			sudo chown $SUSER:$USER .local/share/.nxyz6798
			mv /home/$USER/.local/share/.nxyz6798 /home/$USER/$value
			rm $txtdir
			sudo chmod 777 .local/share/.znxyzs/.owo.txt
			sudo chown $USER:$USER .local/share/.znxyzs/.owo.txt
			>.local/share/.znxyzs/.owo.txt
			echo "zena" >> .local/share/.znxyzs/.owo.txt
			sudo chmod 700 .local/share/.znxyzs/.owo.txt
			sudo chown root:root .local/share/.znxyzs/.owo.txt
			echo -e "Reset succesful\e[0m"
			exit
			}
		else
			{
			rm $txtdir
			sudo chmod 777 .local/share/.znxyzs/.owo.txt
			sudo chown $USER:$USER .local/share/.znxyzs/.owo.txt
			>.local/share/.znxyzs/.owo.txt
			echo "zena" >> .local/share/.znxyzs/.owo.txt
			sudo chmod 700 .local/share/.znxyzs/.owo.txt
			sudo chown root:root .local/share/.znxyzs/.owo.txt
			echo -e "\n\e[32mReset succesful\e[0m"
			exit
			}
		fi
		}
	else
		{
		echo -e "\n\e[31mReset cancelled\e[0m"
		}
	fi
	}
	
elif [ $C = $bye ]; then
	{
	exit
	}
	
else
	echo -e "\nWhat the hell did you enter?! (-_-)\n"
fi
}
done
