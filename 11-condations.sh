#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo "PLEASE RUN THSI SCRIPT WITH SUDO USER"
    exit 1
fi

echo "proceeding...."
dnf install nginx -y

if [ $? -ne 0]; then
    echo "NGINX INSTALLTION FAILED"
    exit 1
else
    echo "NGINX IS INSTALLED SUCCESSFULLY"
fi  

dnf install mysql -y

if [ $? -ne 0]; then
    echo "MYSQL INSTALLTION FAILED"
    exit 1
else
    echo "MYSQL IS INSTALLED SUCCESSFULLY"
fi  

echo "still.....proceeded..."