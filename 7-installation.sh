#!/bin/iibash

USERID=$(id -u)
#echo "user ID is: $USERID"

if [ $USERID -ne 0 ]
 then
         echo "please run the script with Root privileges"
         exit 1
fi

dnf list instaled git

if [ $? -ne 0 ]
  then
     echo "Git is not installed, going to install it."
     dnf install git -y
     if
     then
         echo "git installaion is not success..check it"
         exit 1
     else
             echo "git installation is success"

     fi
  else
     echo "Git is Already installed, nothing to do."
fi

dnf list installed mysql

if [ $? -ne 0 ]
     then
         echo "Mysql installaion is not success..check it"
         dnf install mysql -y
         if [ $? -ne 0 ]
         then
            echo "mysql installation is failure .please check it"

         exit 1
         else
          echo "Mysql server installed successful"
         fi
 else
    echo "mysql is already installed"
 fi



