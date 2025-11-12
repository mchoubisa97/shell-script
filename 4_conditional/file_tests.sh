#!/bin/bash

set -euo pipefail
file="/home/ubuntu/logs/backup.log"

if [[ -f $file && -r $file && -s $file ]]; then
	echo "$file exists, is regular, readable and not empty"
elif [[ -d $file ]]; then
	echo "$file is a directory (enexpected)"
else
	echo "$file missiong or empty"
fi
