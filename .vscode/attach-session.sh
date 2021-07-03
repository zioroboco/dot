#!/bin/bash
set -e

tmux="/usr/local/bin/tmux"
project_dir=$(project-root "$1")
session=$(basename "$project_dir")

if [[ $(basename "$(pwd)") = "notes" ]]; then
	session="notes"
elif [[ -z $session ]]; then
	session="λ"
fi

$tmux attach-session -t $session || $tmux new-session -s $session -t "$project_dir"
