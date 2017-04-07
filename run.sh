#!/bin/sh

CONTAINER=`cat ./config/container`

docker run \
    -v `pwd`/code:/code \
    -w /code \
    -i -t $CONTAINER \
    bash