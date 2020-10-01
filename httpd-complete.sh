#!/usr/bin/bash
#Author: Badal Kodape
#Purpose: httpd start, stop, restart, status
user_id=$( id -u )

if [[ user_id -ne 0 ]]
then
	echo " you are not root user can run script"
fi

read -p "enter your action: " user_action

if [[ $user_action == "start" ]]
then
        echo "httpd starting......"
	systemctl status httpd &>/dev/null || systemctl start httpd

elif [[ $user_action == "stop" ]]
then
        echo "httpd stoping......"
	systemctl status httpd &>/dev/null && systemctl stop httpd

elif [[ $user_action == "restart" ]]
then
        echo "httpd restarting......"
	systemctl restart httpd

elif [[ $user_action == "status" ]]
then
        echo "httpd showing status......"
	systemctl status httpd
else
  echo "your action is invalid"  
  echo "valid actions are start|stop|restart|status"
fi
