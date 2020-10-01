#!/usr/bin/bash

for file in httpdcase.sh httpdstat.sh simplecal.sh tomcat_install.sh tom-install.sh tt.sh
do
	if [[ -x $file ]]
	then
		echo "$file have execution permission"
	else
		echo "$file does not have permission"
	fi
done
