#!/bin/bash

cd
folder="/home/$USER/.local/share/.nxyz6798"
file="/usr/bin/nxyzs.sh"

if [ -e $file ]; then

{

if [ -e $folder ]; then
	{
	echo -e "Folder is already locked.\nPlease unlock the folder before uninstalling"
	echo -e "\e[31mUninstall failed\e[0m"
	exit
	}
else
	{
	sudo rm /usr/bin/nxyzs.sh
	sudo rm /usr/share/icons/syzfrtn.xpm
	rm /home/$USER/.local/share/applications/azusal7898.desktop
	text_dir="/home/$USER/.local/share/.znxyzs/.nxyzd.txt"
	if [ -e $text_dir ]; then
	{
	rm $text_dir
	}
	fi
	pas_dir="/home/$USER/.local/share/.znxyzs/.owo.txt"
	if [ -e $pas_dir ]; then
	{
	sudo chmod 777 .local/share/.znxyzs/.owo.txt
	sudo chown $USER:$USER .local/share/.znxyzs/.owo.txt
	rm $pas_dir
	rm -d /home/$USER/.local/share/.znxyzs
	}
	fi
	
	echo "Uninstallation complete"
	}
fi

}

else

{
echo "Install the application before uninstalling"
exit
}
fi
