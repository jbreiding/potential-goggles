#!/usr/bin/env bash

set -x

VOLUMES="my-app temporalite go history"
NETWORKS="my-app-network"

for volume in $VOLUMES
do
  if docker volume create --name $volume &> /dev/null; then
    echo "Created volume $volume"
  else
    echo "Failed to create volume $volume"
  fi
done

for network in $NETWORKS
do
  docker network create $network &> /dev/null
  if [ "$?" -ne "0" ]; then
    echo "Network $network already exists"
  else
    echo "Created docker network $network"
  fi
done
