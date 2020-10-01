#!/usr/bin/bash

if [[ $(id -u) -ne 0 ]]
then
	echo "run as root user or use sudo"
	exit 1
fi

for pkg in vim httpd nginx curl telnet
do
	if which $pkg &>/dev/null
	then
		echo "$pkg is already installed"
	else
		echo "$pkg is installing......."
		yum install $pkg -y &>/dev/null
		if [[ $? -eq 0 ]]
		then
			echo "$pkg installed successfully ..."
		else
			echo"$pkg unable to install"
		fi
	fi
done
