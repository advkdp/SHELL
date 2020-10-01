#!/usr/bin/bash
#Author: Badal Kodape
#Purpose: httpd start, stop, restart, status
user_id=$( id -u )

if [[ user_id -ne 0 ]]
then
	echo " you are not root user can run script"
fi

read -p "enter your action: " useractions

case $useractions in

	start)
		echo "httpd starting......"
	        systemctl status httpd &>/dev/null || systemctl start httpd
		;;
	
	stop)
		echo "httpd stoping......"
	        systemctl status httpd &>/dev/null && systemctl stop httpd
		;;
       
	restart)
		echo "httpd restarting......"
	        systemctl restart httpd
		;;
	
	status)
		echo "httpd showing status......"
	        systemctl status httpd
		;;
	*)
		echo "your action is invalid"  
                echo "valid actions are start|stop|restart|status" 
		;;
esac
