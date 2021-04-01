#!/bin/bash
while true; do # begin loop 
    read -p "Enter a two digit numeric code (integer) : " intno # prompt user for a 2 digit integer 
    if [[ $intno -eq 20 ]] ||  [[ $intno -eq 40 ]];then # if 20 and 40 is given, exit the loop
        echo 'A valid input has been made'
        exit 1
    elif [[ $intno != "[0-9]+$" ]]; then
        echo  'Invalid input , try again'
    elif [[ -z "intno" ]]; then
        echo 'Invalid input,try again'
    else
        echo 'Invalid input,try again'
    fi
done
exit 0
