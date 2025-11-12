#!/bin/bash

SRC_DIR="/home/ubuntu"
DEST_DIR="/home/ubuntu/backup"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$DEST_DIR/local_backup_$DATE.tar.gz"
LOG_FILE="/home/ubuntu/logs/backup.log"

echo "Starting backup at $(date)" | tee -a $LOG_FILE
tar -czf $BACKUP_FILE $SRC_DIR && echo "Backup successful: $BACKUP_FILE" | tee -a $LOG_FILE
