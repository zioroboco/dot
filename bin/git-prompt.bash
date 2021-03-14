#!/bin/bash
set -e

commit=$(git rev-parse HEAD 2>/dev/null)

if [[ -n "$commit" ]]; then
  prompt=$(git branch --show-current 2>/dev/null)

  if [[ -z "$prompt" ]]; then
    prompt+="${commit:0:6}"
  fi

  if [[ -n "$(git status --porcelain)" ]]; then
    prompt+="*"
  fi

  echo "$prompt"
fi
