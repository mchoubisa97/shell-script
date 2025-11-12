#!/binbash

rotate_log() {
	log_dir="/home/ubuntu/logs"
	archive_dir="/home/ubuntu"

	mkdir -p $archive_dir
	tar -czf "$archive_dir/logs_$(date +%F).tar.gz" $log_dir/*.log
	> $log_dir/app.log
	echo "logs rotated successfully"
}

rotate_log
