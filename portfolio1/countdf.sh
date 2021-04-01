#!/bin/bash
drname=$1 #takes the argument of a path 
datafiles=0
emptyfiles=0
emptydrctry=0
filleddrctry=0
     for item in $drname ; do #search for the details in the directory

          if [ -d $item ]; then # if it is a directory
               
               if [ -s $item ]; then #check if its empty
               emptydrctry=$emptydrctry+1 #thats adds in an empty directory
               else
               filleddrctry=$filleddrctry+1 #add up in a filled directory
               fi

          elif [ -f $item ]; then #check if its a file

               if [ -s $item]; then #whether its empty
               emptyfiles =$emptyfiles+1 #then adds 1
               else
               datafiles =$datafiles+1 #otherwise add to the variable that contain data of the files
               fi

          else
               echo 'Item type unknown'#if its not a directory or file

          fi 
     done
#echoes all the counts of files and its directories
echo "The $1 directory contains"
echo "$datafiles that contain data "
echo "$emptyfiles that are empty "
echo "$emptydrctry directory contains  "
echo "$filleddrctry directory contains "

exit 0 #exit the program
