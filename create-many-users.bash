#!/bin/bash

#This script generate a random password for each user specified on the command line

# Display the path of the script
echo "You have run the script ${0}"

# Display the directory and filename of the script
echo "You used $(dirname ${0}) as a directory for the $(basename ${0}) script"

NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} arguments on the command line"

# making sure the user supplied at least one argument to the script
if [[ "${NUMBER_OF_PARAMETERS}" -eq 0 ]]; then
  echo "Error: Usage ${0} USERNAME [USERNAME]"
  exit 1
fi

