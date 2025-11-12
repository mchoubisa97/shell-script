#!/bin/bash

LOG_DIR="/home/ubuntu/logs"
ARCHIVE_DIR="/home/ubuntu/backup"

for FILE in $LOG_DIR/*.log; do
	if [ $(stat -c%s "$FILE") -gt 1044576 ]; then
		mv "$FILE" $ARCHIVE_DIR/
		echo "Moved $FILE to backup"
	fi
done
