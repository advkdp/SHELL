#!/bin/bash
#Author: Badal
#Purpose: Running multiple commands on Multiple Remote 

echo "Running multiple commands on Multiple Remote servers"
echo "=============********************============================"

for eachserver in ec2-user@13.232.98.172 ec2-user@13.233.216.85
do
for eachcmd in date uptime hostname "free -m"
do
	echo "the $eachcmd command output on server: $eachserver"
	sshpass -f pasd ssh -o StrictHostKeyChecking=No "$eachserver" "$eachcmd"
	echo "==============================================================="
done
done
