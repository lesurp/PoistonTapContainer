#!/bin/bash

PUBLIC_PORT=1337
CONTAINER_PORT=1337
IMAGE_NAME=poisontap
CONTAINER_NAME=poisontap_container

build() {
	docker build -t $IMAGE_NAME .
}

start() {
	docker run -p $PUBLIC_PORT:$CONTAINER_PORT --name="$CONTAINER_NAME" -d $IMAGE_NAME 
}

restart() {
	docker restart $CONTAINER_NAME
}

help() {
	echo -e "Usage is:\n$0 (build|start|restart)"
}

case $1 in
	build|start|restart)
		$1;;
	*)
		help;;
esac
