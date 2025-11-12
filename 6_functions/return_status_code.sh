#!/bin/bash

check_connection(){
	ping -c 1 google.com &> /dev/null
	if [ $? -eq 0 ]; then
		echo "Internet is working."
		return 0
	else
		echo "No Internet connection!"
		return 1
	fi
}

check_connection
