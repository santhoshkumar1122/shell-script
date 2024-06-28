#!/bin/bash

echo "Please enter your username"

read -s USERNAME # the value entered above will be automatically 
# to username variable

echo "Please enter your password"

read -s PASSWORD
echo "Username is: $USERNAME, Password is: $PASSWORD" # I am printing 
#username and password,we should not do that in scripts

