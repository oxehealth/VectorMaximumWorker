#!/bin/bash

CONTAINER=`cat ./config/container`
WORKING_DIR=`pwd`

docker build -t $CONTAINER $WORKING_DIR



