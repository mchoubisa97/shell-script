#!/bin/bash

deploy_app() {
	echo "Starting deployment for $1 environment..."
	git pull origin main
	docker build -t myapp:$1 .
	docker run -d -p 80:80 myapp:$1
	echo "Deployment complete for $1"
}

deploy_app "staging"
deploy_app "production"
