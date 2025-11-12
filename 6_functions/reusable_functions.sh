#!/bin/bash

backup_files(){
	src=$1
	dest=$2
	echo "Back up files from $src to $dest..."
	cp -irv "$src" "$dest"
}

backup_files /home/ubuntu/backup /home/ubuntu/backup_copy
