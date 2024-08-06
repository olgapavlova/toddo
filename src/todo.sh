#!/bin/bash
clear
TODO_FILE=.todo
rm -f $TODO_FILE
grep -RHn TODO --exclude-dir .venv --exclude-dir .git > $TODO_FILE
sed -r 's/([^\:]*):([^\:]*).*TODO(.*)/\1\t[\2] \3/' $TODO_FILE
sed '!d;=' $TODO_FILE | paste -d: - -
//more $TODO_FILE
