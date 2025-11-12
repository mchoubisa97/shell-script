#!/bin/bash

DB_USER="admin"
DB_PASS=$(cat /home/ubuntu/secrets/db_password)

echo "Connecting as $DB_USER..."
echo $DB_PASS
