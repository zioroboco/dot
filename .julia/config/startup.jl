# https://github.com/julia-vscode/julia-vscode/wiki/Known-issues-and-workarounds#revisejl
atreplinit() do repl
    @async try
        sleep(0.1)
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch
        @warn("Could not load Revise.")
    end
end

function subtypetree(roottype, level = 1, indent = 4)
  level == 1 && println(roottype)
  for s in subtypes(roottype)
    println(join(fill(" ", level * indent)) * string(s))
    subtypetree(s, level + 1, indent)
  end
end

