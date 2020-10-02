#!/usr/bin/bash
#Author: Badal
#Purpose: To run commands on many remote servers

echo "PASSWORD-LESS-SCRIPT-TO-RUN-COMMANDS-ON-REMOTE-SERVERS"
echo -e "\n"
for eachserver in $(cat remoteservers.txt)
do
	echo "Running commands on Server: $eachserver"
	for eachcmd in date uptime "free -m"
	do
		echo "$eachcmd OUTPUT-ON-SERVER: $eachserver"
		ssh -o StrictHostKeyChecking=No ec2-user@"$eachserver" "$eachcmd"
		echo -e "\n"
	        echo "==========================================================="
	done
done
