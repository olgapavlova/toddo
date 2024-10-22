#!/bin/bash

while [ -n "$1" ]
do
    case "$1" in
        -b) backlog; shift;;
        -t) todo; shift;;
        *) echo "Wrong key"; break;;
    esac
done
pwd
