#!/bin/sh

CONTAINER=`cat ./config/container`
ORGANIZATION=`cat ./config/organization`

if [ `docker images | grep $CONTAINER | wc -l` -eq 0 ] ;
then 
    NAMESPACE=$ORGANIZATION/
elif [ `docker images | grep $ORGANIZATION/$CONTAINER | wc -l` -eq 1 ] ;
then
    NAMESPACE=$ORGANIZATION/
fi

# Ensure that ./code/bin folder exits and is writeable
# use 777 as some users have to run this script as sudo
# as thier account is not part of the docker group
# to fix that run `sudo usermod -aG docker $USER`
# then log out and back in again and it will be possible
# to call docker run without prefixing with sudo
SHARED_PATH=`pwd`/code
BUILD_PATH=$SHARED_PATH/bin

mkdir -p  $BUILD_PATH
chmod 777 $BUILD_PATH

docker run \
    -v $SHARED_PATH:/code \
    -w /code \
    -i -t $NAMESPACE$CONTAINER \
    bash
