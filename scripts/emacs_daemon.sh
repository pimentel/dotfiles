#!/bin/bash

emacs_pid=`ps x | awk \
    '{if ($3 == "Ss" && $5 == "emacs" && $6 == "--daemon"){print $1}}'`

if [ "$emacs_pid" == "" ]; then
    echo "Starting Emacs daemon."
    emacs --daemon
    clear
fi
