#!/bin/bash
user_id=$(id -u)
log_folder="/var/log/shell-pratice"
log_file="${log_folder}/${0}.log"

if [ $user_id -ne 0 ];then
   echo "PLEASE RUN USING THE SUDO USER"
   exit 1
fi

mkdir -p $log_folder

echo "script started the execution at: $(date +"%F %T")" &>> $log_file

validate(){
    if [ ${1} -ne 0 ]; then
        echo "${2} is failed"
        exit 1
    else
        echo "${2} is completed successfully" &>> $log_file
    fi    
}

install(){
    dnf install "$1" -y;
}

for x in $@
do
     rpm -q "$x"
     if [ $? -ne 0 ]; then
        install $x
        validate $? "$x"
     else
        echo "$x is already instlled so skipping"  &>> $log_file
      fi
done         
    

echo "script execution is completed at $(date +"%F %T")" &>> $log_file