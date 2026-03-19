#!/bin/bash
set -e

if [ $# -eq 0 ]; then
    echo "Usage: $0 {build|start|stop|logs|status}"
    exit 1
fi

case $1 in 
	build)
	docker compose build
	;;
	start)
	docker compose up -d
	;;
	stop)
	docker compose down
	;;
	logs)
	docker compose logs -f
	;;
	status)
	docker compose ps
	;;
	*)
	echo "Usage: $0 {build|start|stop|logs|status}"
	exit 1
	;;
esac
