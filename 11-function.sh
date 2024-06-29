#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
then
   echo "Error: installing  is failed"
   exit 1
else
   echo "Installing  is success"
fi
}

if [ $ID -ne 0 ]
then  
   echo "Error:: Please run this script with root access"
   exit 1
else
   echo "you are a root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE