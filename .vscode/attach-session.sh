#!/bin/bash
set -e

tmux="/usr/local/bin/tmux"
session=$(basename "$(project-root "$1")")

if [[ $(basename $(pwd)) = "notes" ]]; then
	session="notes"
elif [[ -z $session ]]; then
  session="λ"
fi

$tmux attach-session -t $session || $tmux new-session -s $session

