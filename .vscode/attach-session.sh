#!/bin/sh
tmux attach-session -d -t $1 || tmux new-session -s $1
