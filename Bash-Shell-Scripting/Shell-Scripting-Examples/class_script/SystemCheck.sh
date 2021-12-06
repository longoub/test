#!/bin/bash

# Description: This script will check if the user running the script is root or not
# Author: Tia M
# Date: October 21, 2019
# Modified on:             by:

# -e to escape the \n
# if you do not put exit, the script will continue if not root or we want the script to exit if not root

if [ $UID -ne 0 ]
then
        echo -e "\nPlease, you need root access to run this script.....\n"
        exit 1
fi


echo -e "\nPlease make a choice below:   \n
        *********************************
        *       1==> cpu                *
        *       2==> Memory             *
        *       3==> Os version         *
        *       4==> processes          *
        *       5==> system bits        *
        *       6==> mount points       *
        *       7==> ip address         *
        *       8==> Hostname           *
        *       9==> Kernel version     *
        *       10==> update OS         *
        *********************************\n"

echo -n " Enter your choice (1 - 10):   "
read ans


if  [ ${ans} -eq 1 ] 2>/dev/null
then
lscpu

elif  [ ${ans} -eq 2 ]
then
free -m

elif [ ${ans} -eq 3 ]
then
cat /etc/*release

elif [ ${ans} -eq 4 ] 
then
ps -ef |wc -l

elif [ ${ans} -eq 5 ]
then
getconf LONG_BIT

elif [ ${ans} -eq 6 ]
then
df -h

elif  [ ${ans} -eq 7 ] 
then
ip a

elif  [ ${ans} -eq 8 ]
then
hostname

elif  [ ${ans} -eq 9 ] 
then
uname -r

elif  [ ${ans} -eq 10 ] 
then
yum update -y

else
echo -e "\nPlease enter a valid choice (1- 10) \n"
exit 2
fi

