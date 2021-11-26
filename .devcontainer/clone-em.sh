#!/usr/bin/env bash

set -x

pushd "$PROJECTS"

if [[ ! -e temporalite ]]
then
    git clone https://github.com/jbreiding/temporalite -b dockerize
fi

if [[ ! -e ui-server ]]
then
    git clone https://github.com/temporalio/ui-server
    pushd ui-server
    git submodule update --init
    popd
fi

popd
