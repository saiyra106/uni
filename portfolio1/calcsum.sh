#!/bin/bash 
# sets the bash command 
Sum=$(($1 + $2 + $3)) # uses default variables 
    if  [ $Sum -le 30 ] ; then # checks if sum is less than 30
    echo "The Sum of $1 and $2 and $3 is $Sum" #echo the result
    else
    echo 'Sum exceeds maximum allowable' # otherwise echo sum exceeds
    fi
exit 0 # exit program
