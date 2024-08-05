#!/usr/bin/bash
clear
TODO_FILE=.todo
cd ..
rm -f $TODO_FILE
grep -RHn TODO --exclude-dir=tools --exclude=.* > $TODO_FILE
sed -i -r 's/([^\:]*):([^\:]*).*TODO(.*)/\1\t[\2] \3/' $TODO_FILE
more $TODO_FILE
