#!/bin/bash
BACKLOG_FILE=.backlog
more $BACKLOG_FILE | sort --key=1.2,2.1 > $BACKLOG_FILE.sorted
mv $BACKLOG_FILE.sorted $BACKLOG_FILE
clear
grep -v '\[+\]' $BACKLOG_FILE | head
