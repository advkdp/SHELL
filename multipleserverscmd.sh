#!/bin/bash

for eachcmd in date uptime hostname "free -m"
do
	echo "the $eachcmd command output on server: ec2-user@13.232.98.172"
	sshpass -f pasd ssh -o StrictHostKeyChecking=No ec2-user@13.232.98.172 "$eachcmd"
	echo "==============================================================="
done
