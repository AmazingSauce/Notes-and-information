#!/bin/bash
#created on 06/02/2015

OLDIFS=$IFS #input file seperator
IFS=","

while read User Job uid Location 
 do
	echo -e "\e[1;33m$User \
	========================\e[0m\n \
	Role : \t $Job\n \
	ID : \t $uid\n \
	Site : \t $Location\n \ "
 done < $1 # allows you to not hard code the code, it runs through the first argument to the script.

IFS=$OLDIFS
