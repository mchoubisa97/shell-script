#!/bin/bash

# ========================================
# DevOps/SRE Automation Script
# Tasks:
# 1. Disk space check and email alert
# 2. Deploy app based on environment
# 3. Daily log cleanup
# 4. EC2 instance stop ➜ terminate
# 5. AWS resource tagging
# 6. CPU utilication monitoring
# ========================================

# --------- VARIABLES ---------
DISK_THRESHOLD=20
EMAIL="mchoubisa0@gmail.com"
ENVIRONMENT=$1
LOG_DIR="/home/ubuntu/logs"
LOG_RETENTION_DAYS=1
EC2_IDS=("i-020ae404e30ea5b04" "i-0309596aaab70194a")
OWNER="CeLeSTiaL_Myth"
REGION="ap-south-1"

# ========================================
# [1] Disk Space Monitoring
# ========================================
echo "=== Checking disk usage ==="
df -H | grep -vE '^Filesystem|temfs|cdrom' | while read output; do
	usage=$(echo $output | awk '{print $5}' | sed 's/%//g')
	partition=$(echo $output | awk '{print $1}')

	if [ $usage -gt $DISK_THRESHOLD ]; then
		echo "Warning: Partition $partition usage is ${usage}%"
		echo "Disk alert for $partition sent to $EMAIL" | mail -s "Disk Space Alert" $EMAIL
	fi
done


# ========================================
# [2] Deploy App Based on Environment
# ========================================
echo "=== Deploying App for environemnt: $ENVIRONMENT ==="
case $ENVIRONMENT in
	dev)
		echo "Deploying DEV app..."
		;;
	test)
		echo "Deploying TEST app..."
		;;
	prod)
		echo "Deploying PROD app..."
		;;
	*)
		echo "❌ Unknown environment: $ENVIRONMENT. USE dev/test/prod."
		exit 1
	;;
esac


# ========================================
# [3] Daily Log Cleanup
# ========================================
echo "=== Cleaning logs older than $LOG_RETENTION_DAYS days in $LOG_DIR ==="
find $LOG_DIR -type f -mtime +$LOG_RETENTION_DAYS -exec rm -f {} \;
echo "✅ Log cleanup complete."


# ========================================
# [4] EC2 Instance Stop ➜ Terminate
# ========================================
echo "=== Stopping EC2 instances ==="
for INSTANCE in "${EC2_IDS[@]}"; do
	echo "Stopping EC2 instance: $INSTANCE..."
	aws ec2 stop-instances --instance-ids $INSTANCE --region $REGION >/dev/null

	# Wait until instance is fully stopped
	echo "⌛ Waiting for instance $INSTANCE to stop..."
	aws ec2 wait instance-stopped --instance-ids $INSTANCE --region $REGION
	echo "✅ Instance $INSTANCE stopped."

	# Terminate instance after stopping
	echo "🚨 Terminating instance: $INSTANCE..."
	aws ec2 terminate-instances --instance-ids $INSTANCE --region $REGION >/dev/null
	echo "💀 Instance $INSTANCE terminated successfully."
done


# ========================================
# [5] AWS Resource Tagging
# ========================================
echo "=== Tagging AWS resources ==="
for INSTANCE in "${EC2_IDS[@]}"; do
	aws ec2 create-tags --resources $INSTANCE \
		--tags Key=Environment,Value=$ENVIRONMENT Key=Owner,Value=$OWNER \
		--region $REGION
	echo "Tagged $INSTANCE with Environemnt=$ENVIRONMENT and Owner=$OWNER"
done

echo "🎉 All tasks completed successfully!"
