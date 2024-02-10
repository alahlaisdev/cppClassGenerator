#!/bin/bash

CLASSNAME=""

if [ -z "$1" ]
then
    echo "No arguments provided"
    exit 1
else
    CLASSNAME="$1"
fi

if [ -z "$2" ]
then
    PATH=".."
else
    PATH="$2"
fi

/usr/bin/node headergenerator.js $CLASSNAME > $PATH/$CLASSNAME.hpp | /usr/bin/node classgenerator.js $CLASSNAME > $PATH/$CLASSNAME.cpp
