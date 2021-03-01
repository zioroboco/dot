#!/bin/bash
set -e

session=$(basename "$(project-root "$1")")

if [[ -z $session ]]; then
  session="terminal"
fi

tmux attach-session -t $session || tmux new-session -s $session
