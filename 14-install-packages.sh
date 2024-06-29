#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $ID -ne 0 ]
then
   echo -e "$R ERROR:: Please run this script with root access $N"
   exit 1 # we can give other than 0
else
   echo "you are a root user"
fi # fi means reverse of if, indicating condition end

echo "All arguements passed: $@"

