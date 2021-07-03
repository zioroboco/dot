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

ENV["JULIA_EDITOR"] = "nvim"

