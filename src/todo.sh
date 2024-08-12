#!/bin/bash
TODO_FILE=.todo

if [ -n "$1" ]
then

# Open todo in vim by line
VIM_PARAM=$(sed -r -n "$1s/.*\[([0-9]*)\].\.\/(.*)/\2 +\1/p" $TODO_FILE)
vim $VIM_PARAM


else

# Generate .todo file from scratch
clear
rm -f $TODO_FILE
grep -RHn TODO --exclude-dir .venv --exclude-dir .git | sed -r 's/([^\:]*):([^\:]*).*TODO (.*)/\3\t[\2] \1/' > $TODO_FILE
more -S -N -E $TODO_FILE

fi
