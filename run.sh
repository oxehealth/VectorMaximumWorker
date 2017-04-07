#!/bin/sh

CONTAINER=`cat ./config/container`
ORGANIZATION=`cat ./config/organization`

if [ `docker images | grep $CONTAINER | wc -l` -eq 0 ] ;
then 
    NAMESPACE=$ORGANIZATION/
fi

docker run \
    -v `pwd`/code:/code \
    -w /code \
    -i -t $NAMESPACE$CONTAINER \
    bash
