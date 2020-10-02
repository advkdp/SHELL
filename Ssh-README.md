Connecting to remote server eg cloud ec2-terminal
from your localhost terminal

centos] ssh ec2-user@pubipofec2-instance
it ask for adding fingerprint of your remote server to loacl server (yes/no)-yes

then go to ec2-instance
vi /etc/ssh/sshd_config
search:/PasswordAuth
and uncheck PasswordAuthentication Yes
and hash #PasswordAuthentication No

then if its ami-linux use service sshd restart  for < 7 rhel
use ami2-linux systemctl restart sshd   > 7 rhel

now by ssh ec2-user@pubip
you can connect to remote server

Note: by ssh ip you can connect but then local xminal username should be same of remote server username

ssh-keygen
ll
ls -la
cd .ssh
ls
ssh-copy-id ec2-user@13.233.216.85
cd
ssh ec2-user@13.233.216.85
clear
man ssh
man StrictHostKeyChecking
ssh -o StrictHostKeyChecking=No ec2-user@13.233.216.85
date
ssh ec2-user@13.233.216.85 date
ssh ec2-user@13.233.216.85 "date;pwd"
ssh ec2-user@13.233.216.85 pwd
ssh ec2-user@13.233.216.85 hostname
ssh -o StrictHostKeyChecking=No ec2-user@13.233.216.85 hostname
ec2-info=$(ssh -o StrictHostKeyChecking=No ec2-user@13.233.216.85 hostname) fail in variable cant use-

ec2_info=$(ssh -o StrictHostKeyChecking=No ec2-user@13.233.216.85 hostname)
cat ec2_info fail as its a varibale
echo "$ec2_info"
ssh -o StrictHostKeyChecking=No ec2-user@13.233.216.85 hostname > ec2-info.txt
cat ec2-info.txt 
ssh -o StrictHostKeyChecking=No ec2-user@13.233.216.85 "top"
TERM environment variable not set.

here we have to use -t - terminal closing after getting output

ssh -t -o StrictHostKeyChecking=No ec2-user@13.233.216.85 "top"


ssh -t -o StrictHostKeyChecking=No ec2-user@13.233.216.85 "hostname;free -m"
ip-172-31-45-131.ap-south-1.compute.internal
              total        used        free      shared  buff/cache   available
Mem:            983          73         737           0         172         775
Swap:             0           0           0

[adminuser@centos ~]$ ssh -t -o StrictHostKeyChecking=No ec2-user@13.233.216.85 "top"

top - 09:22:54 up  3:36,  2 users,  load average: 0.00, 0.00, 0.00
Tasks:  97 total,   1 running,  60 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.3 sy,  0.0 ni, 99.7 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem :  1006940 total,   753148 free,    76640 used,   177152 buff/cache
KiB Swap:        0 total,        0 free,        0 used.   792812 avail Mem 

  PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND                               
 2649 root      16  -4   57676   1940   1524 S  0.7  0.2   0:00.08 auditd                                
 5654 root      20   0  152496   8432   7156 S  0.3  0.8   0:00.01 sshd                                  
    1 root      20   0   43556   5312   3976 S  0.0  0.5   0:01.74 systemd                               
    2 root      20   0       0      0      0 S  0.0  0.0   0:00.00 kthreadd                              
    4 root       0 -20       0      0      0 I  0.0  0.0   0:00.00 kworker/0:0H                          
    5 root      20   0       0      0      0 I  0.0  0.0   0:00.01 kworker/u30:0                         
    6 root       0 -20       0      0      0 I  0.0  0.0   0:00.00 mm_percpu_wq                          
    7 root      20   0       0      0      0 S  0.0  0.0   0:00.06 ksoftirqd/0                           
    8 root      20   0       0      0      0 I  0.0  0.0   0:00.16 rcu_sched                             
    9 root      20   0       0      0      0 I  0.0  0.0   0:00.00 rcu_bh                                
   10 root      rt   0       0      0      0 S  0.0  0.0   0:00.00 migration/0                           
   11 root      rt   0       0      0      0 S  0.0  0.0   0:00.03 watchdog/0                            
   12 root      20   0       0      0      0 S  0.0  0.0   0:00.00 cpuhp/0                               
   14 root      20   0       0      0      0 S  0.0  0.0   0:00.00 kdevtmpfs 


Providing password for ssh using sshpass
https://aws.amazon.com/premiumsupport/knowledge-center/ec2-enable-epel/
installing sshpass in amazon linux
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install sshpass -y

installing sshpass in centos local can search for epel rhel8
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install sshpass

===========================================================

sshpass -p "redhat" ssh -t -o StrictHostKeyChecking=No ec2-user@13.232.98.172 date
sshpass -p "redhat" ssh -t -o StrictHostKeyChecking=No ec2-user@13.232.98.172 hostname
ll
vi pasd or echo redhat > pasd
sshpass -f pasd ssh -t -o StrictHostKeyChecking=No ec2-user@13.232.98.172 hostname
sshpass -f pasd ssh -t -o StrictHostKeyChecking=No ec2-user@13.232.98.172 "free -m"
sshpass -f pasd ssh -t -o StrictHostKeyChecking=No ec2-user@13.232.98.172 ll
sshpass -f pasd ssh -t -o StrictHostKeyChecking=No ec2-user@13.232.98.172 "ls"
export SSHPASS="redhat"
sshpass -e ssh -t -o StrictHostKeyChecking=No ec2-user@13.232.98.172 "ls"
