#!/bin/sh
#
# name     : tmuxen, tmux environment made easy
#

cmd=$(which tmux)      # tmux path
session=work

if [ -z $cmd ]; then
    echo "You need to install tmux."
    exit 1
fi

$cmd has -t $session 2> /dev/null

if [ $? != 0 ]; then
    $cmd new -d -n top -s $session "htop"
    ##$cmd neww -n ipy -t $session "ipython"
    $cmd neww -n server -t $session 
    $cmd neww -n editor -t $session 
    $cmd neww -n shell  -t $session 
	$cmd selectw -t $session:3
fi

$cmd att -t $session

exit 0
