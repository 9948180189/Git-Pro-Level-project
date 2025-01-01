#!/bin/bash

USERID=$(id -u)
#echo "user ID is: $USERID"

if [ $USERID -ne 0 ]
 then
	 echo "please run the script with Root privileges"
	 exit 1

fi

dnf list instaledl git 

if [ $? -ne 0 ]
  then 
     echo "Git is not installed, going to install it."
     dnf install git -y
  else
     echo "Git is Already installed, nothing to do."
fi     

