#!/usr/bin/env bash

cd `dirname $0`

count=`docker-compose ps -q | awk 'END{print NR}'`

if [ $count == 0 ]; then
    docker-sync-stack start
else
    echo "Docker is already running !!"
fi
