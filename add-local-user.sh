#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
  echo "Error: please run this script with administrator privileges"
  exit 1
fi

read -r -p 'Enter the username to create : ' USERNAME
echo "user : ${USERNAME}"

read -r -p 'Enter the password : ' PASSWORD

read -r -p 'Enter a little description for the user to be created : ' COMMENT
echo "description : ${COMMENT}"

echo "Adding the user..."
useradd -c "${COMMENT}" -m ${USERNAME}

if [[ ${?} -ne 0 ]]; then
  echo "Error: the user couldn't be added."
  exit 1
else
  echo "The user was added successfully."
fi

echo "Setting a default password for the user..."
echo "${USERNAME}:${PASSWORD}" | chpasswd

if [[ ${?} -ne 0 ]]; then
  echo "Error: the default password for ${USERNAME} couldn't be set."
  exit 1
else
  echo "The default password for ${USERNAME} was set successfully"
fi

echo "Making the password temporary to be changed by the user at the first login..."
passwd -e ${USERNAME}

if [[ ${?} -ne 0 ]]; then
  echo "Error: couldn't make the default password temporary."
  exit 1
else
  echo "The password is now temporary and will have to be set by the user at the first login."
fi
