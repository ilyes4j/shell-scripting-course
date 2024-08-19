#!/bin/sh

LOCAL_UID=$(id -u)
USERNAME=$(id -un)

echo "Your uid is ${LOCAL_UID}"
echo "Your username is ${USERNAME}"

if test "${LOCAL_UID}" -eq 0
then
  echo "you are Root"
else
  echo "You are not Root"
fi
