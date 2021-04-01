#!/bin/bash

while true; do  #while loop 
        read -p "Pattern you want to search-  " pattern  #ask for the specific pattern
        read -p "Want an whole word match or any match on the line (y/n)– " match
        read -p "Want any inverted match (y/n) – " inverted
                
        if [[ $match == "y" && $inverted == "y" ]]; then #if conditions check whether they want an inverted match or whole match
            grep -ivw "$pattern" access_log.txt #inverted the pattern match (v) ,(w) whole word match
            grep -ci "$pattern" access_log.txt  #counts the matches
            echo " Matches found"

        elif [[ $match == "y" && $inverted == "n" ]]; then
            grep -wi "$pattern" access_log.txt #(w) whole word match
            grep -ci "$pattern" access_log.txt  #counts the matches
            echo " Matches found"

        elif [[ $match == "n" && $inverted == "y" ]]; then
            grep -iv "$pattern" access_log.txt #(v) inverted word match
            grep -ci "$pattern" access_log.txt  #counts the matches
            echo " Matches found"
            
        elif [[ $match == "n" && $inverted == "n" ]]; then
            grep -ic "$pattern" access_log.txt
            echo 'No Match found'
            
        else
            grep -i "$pattern" access_log.txt
            echo  “No Match found”
        fi 
        
        read -p "Do you want to continue or not (Yes/No) : " con

        if [[ $con = "No" || $con = "no" || $con = "n" ]]; then #want to continue or not
            exit 0  #exits the program 
        fi
done
