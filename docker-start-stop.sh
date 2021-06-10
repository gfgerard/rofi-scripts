#!/bin/bash

if [ $1 == "start" ]
then
	docker ps -a -f "status=exited" --format "table {{.Names}}\t{{.Status}}" | tail -n +2 | rofi -show -dmenu -i | xargs docker start
fi

if [ $1 == "stop" ]
then
        docker ps --format "table {{.Names}}\t{{.Status}}" | tail -n +2 | rofi -show -dmenu -i | xargs docker stop
fi
