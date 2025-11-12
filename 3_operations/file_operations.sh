#!/bin/bash

FILE="/home/ubuntu/logs/backup.log"

if [ -f $FILE ]; then
	echo "$FILE exists."
else
	echo "$FILE not found."
fi

# Count Lines
LINES=$(wc -l < $FILE)
echo "Total lines in $FILE: $LINES"
