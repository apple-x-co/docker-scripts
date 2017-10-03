#!/usr/bin/env bash

cd `dirname $0`

count=`docker-compose ps -q | awk 'END{print NR}'`

if [ $count == 0 ]; then
    echo "Docker is already discarded !!"
else
    docker-compose stop
    docker-sync clean
fi
