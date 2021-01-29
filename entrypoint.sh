#!/bin/sh

wait_for() {
  echo "Waiting for $1 to listen on $2..."
  while ! nc -z $1 $2; do
    echo "sleeping"
    sleep 1
  done
}

for var in "$@"
do
  host=${var%:*}
  port=${var#*:}
  wait_for $host $port
done