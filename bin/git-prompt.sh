#!/bin/sh

commit=$(git rev-parse HEAD 2>/dev/null)

if [ -n "$commit" ]; then
  prompt=$(git branch --show-current 2>/dev/null)

  if [ -z "$prompt" ]; then
    prompt=$(echo "$commit" | cut -c 1-6)
  fi

  if [ -n "$(git status --porcelain)" ]; then
    prompt="${prompt}*"
  fi

  echo "$prompt"
fi
