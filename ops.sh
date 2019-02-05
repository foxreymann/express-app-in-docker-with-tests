#!/bin/bash

command="$1"
container_name="app"

function start(){
  docker-compose up -d
}

function test(){
  docker-compose run --rm $container_name /bin/bash -c 'npm test'
}

function clean(){
  docker rm -f $container_name
}

case $command in
  "clean")
    clean
    ;;
  "start")
    docker-compose up -d
    ;;
  "test")
    test
    ;;
esac
