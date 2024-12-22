#! /bin/bash

echo "UID IS ${UID}"

if [[ ${UID} -ne 0 ]]
then
 echo "The ID is not entered as a sudo user, please run as a sudo user"
 exit 1
fi
 
read -p 'enter the user name' USER_NAME

read -p 'enter the real name' COMMENT

read -p 'enter the password' PASSWORD

useradd -c "${COMMENT}" -m ${USER_NAME}

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

passwd -e ${USER_NAME}
