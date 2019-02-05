#!/bin/bash

command="$1"
container_name="app"

case $command in
  "clean")
    docker rm -f $container_name
    ;;
  "start")
    docker-compose up -d
    ;;
  "test")
    docker-compose run --rm $container_name /bin/bash -c 'npm test'
    ;;
esac
