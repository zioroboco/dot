#!/bin/bash

tmux="/usr/local/bin/tmux"
project_dir=$(project-root "$1")
session=$(basename "$project_dir" | tr '.' '_') # tmux doesn't support '.' in session names

if [[ $(basename "$(pwd)") = "notes" ]]; then
	session="notes"
 	project_dir="/Users/louis/Dropbox/Apps/Editorial/notes"
elif [[ -z $session ]]; then
	session="λ"
fi

$tmux attach-session -t $session || $tmux new-session -s $session -t "$project_dir"
