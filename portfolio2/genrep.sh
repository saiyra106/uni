#!/bin/bash

#assigning the values of html tags in a file
pre="<tr><td>"
post="<\/td><\/tr>"
mid="<\/td><td>"

#grab the content of the files and pipe it through grep
#grep eliminate all lines passed to sed except that contain <td>
#sed eliminates all remaining HTML tags 
#awk prints and calculates the total of all the respective attacks
cat attacks.html | grep "<td>" | sed -e "s/^$pre//g; s/$post$//g; s/$mid/ /g" | awk 'BEGIN {print "Attacks     Instances(Q3)"} { total=($2+$3+$4); printf "%-12s %.0f\n",$1 , total }'

exit 0
