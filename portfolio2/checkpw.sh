#!/bin/bash

#read the content of the files 
#awk checks the valid password requirements such as:
#length greater than or equal to 8
#contain atleast one digit
#have one uppercase letter
#NR>1 skips the header
cat usrpwords.txt | awk '
NR>1 { if (length($2) >= 8 && $2 ~ "[[:digit:]]" && $2 ~ "[[:upper:]]")
{
    printf $2 "\t - meets password strength requirements \n"; #prints the matched conditions
  }
  else 
  {
    printf $2 "\t - DOES NOT meet password strength requirements \n"; #else print this
  }

}' 
exit 0

