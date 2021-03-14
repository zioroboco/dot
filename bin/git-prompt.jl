#!/bin/sh
#=
exec j! $0 $@
=#

"Run a command, discarding stderr, returning stdout as a string"
function execute(cmd::Cmd)
  out = Pipe()
  process = run(pipeline(ignorestatus(cmd), stdout=out, stderr=devnull))
  close(out.in)
  stdout = String(read(out))
end

commit = execute(`git rev-parse HEAD`)

if length(commit) == 0
  exit(0)
end

branch = execute(`git branch --show-current`)

if length(branch) > 0
  prompt = branch[1:length(branch)-1] # trim newline
else
  prompt = commit[1:6]
end

status = execute(`git status --porcelain`)

if length(status) > 0
  prompt *= "*"
end

write(stdout, prompt)
