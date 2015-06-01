#!/bin/bash

is_alive_ping()
{
	  ping -c 1 $1 > /dev/null
	    [ $? -eq 0 ] && echo Node with IP: $i is up.
    }

    for i in 10.8.190.{1..255} 
    do
	    is_alive_ping $i & disown
    done

    for i in $@
    do
	    ping -c 1 $i &> /dev/null

	    if [ $? -ne 0 ]; then
	    	echo "`date`: ping failed, $i host is down!" #| mail -s "$i host is down!" my@email.address # removing the last comment out would allow the script to email the alert of the ip that is down 
		fi
	done
