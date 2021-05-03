#!/bin/bash

getprop() #calling a function getprop
{
kb=B #assigning the value for later use

#du to get the file size and cutting a file path (file name)
file_size=$(du -h $file_name | cut -f1) 

#stat for extracting the modified date of a file and 
#date type is used for setting the format
last_modified_date=$(date -d @$( stat -c %Y $file_name ) '+%d-%m-%Y %T') 

#using wc for count the words in a file 
echo “The file $file_name contains $( cat $file_name | wc -w) words and is $file_size${kb} size and was last modified $last_modified_date”
}

read -p 'Enter file name: ' file_name #getting an input
if ! [[ -f $file_name ]]; then #checks if file exist or not
    echo “File not found”
else
    getprop $file_name #else call the function
fi
exit 0