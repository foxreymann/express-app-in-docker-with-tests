#!/bin/bash

command="$1"
container_name="app"

function start(){
  docker-compose up -d
}

function test(){
  docker-compose run --rm $container_name /bin/bash -c 'npm install && npm test'
  return $?
}

function clean(){
  docker rm -f $container_name
}

case $command in
  "clean")
    clean
    ;;
  "start")
    clean
    test
    if [ "$?" -ne 0 ]; then
      echo "Unit test failed - unable to start the app"
      exit 1
    fi
    start
    ;;
  "test")
    test
    ;;
esac
