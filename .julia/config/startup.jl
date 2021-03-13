# note: not working in julia 1.6 (yet)
# https://github.com/julia-vscode/julia-vscode/wiki/Known-issues-and-workarounds#revisejl
# atreplinit() do repl
#     @async try
#         sleep(0.1)
#         @eval using Revise
#         @async Revise.wait_steal_repl_backend()
#     catch
#         @warn("Could not load Revise.")
#     end
# end

function subtypetree(roottype, level = 1, indent = 4)
  level == 1 && println(roottype)
  for s in subtypes(roottype)
    println(join(fill(" ", level * indent)) * string(s))
    subtypetree(s, level + 1, indent)
  end
end

using OhMyREPL
OhMyREPL.input_prompt!("❱ ", :yellow)
OhMyREPL.enable_pass!("RainbowBrackets", false)
colorscheme!("JuliaDefault")

# Set the shell prompt (red, by default)
Base.Threads.@spawn @sync begin
  sleep(0.5)
  Base.active_repl.interface.modes[2].prompt="❱ "
  Base.active_repl.interface.modes[3].prompt="? "
end

# Leave a blank line
println()
