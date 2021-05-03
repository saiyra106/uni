#!/bin/bash

#declaring an arrays named ass1 and ass2 respectively
declare -a ass1 
declare -a ass2 

#assigning the values to an array
ass1=(12 18 20 10 12 16 15 19 8 11) 
ass2=(22 29 30 20 18 24 25 26 29 30)

no=1 

#declare a for loop to on all values in array
#set a variable to hold sum of all array values as added 
for (( i=0; i<${#ass1[@]}; i++))  
do
sum=$(( ${ass1[$i]} + ${ass2[$i]} )) #add the array values to sum variable
echo -e "Student_$no Result : \t $sum" #echo results to the screen
((no++)) #increments the no
done

exit 0
