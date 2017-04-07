#!/bin/bash

BUILD_PATH=./bin

mkdir -p $BUILD_PATH 
cd $BUILD_PATH && cmake .. && make