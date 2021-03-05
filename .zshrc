# shellcheck shell=bash

# include homebrew manpages
export MANPATH="/usr/local/man:${MANPATH}"

autoload -U zmv

# edit command line input in vim
autoload edit-command-line
zle -N edit-command-line
bindkey -M vicmd ^e edit-command-line

# set up zgen plugin manager
source "${HOME}/.zgen/zgen.zsh"

# set up nvm
export NVM_AUTO_USE=true
export NVM_DIR="${HOME}/.nvm"
zgen load lukechilds/zsh-nvm

zgen load zsh-users/zsh-autosuggestions

# map to up/down to search history
zgen load "zsh-users/zsh-history-substring-search"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# add visible history autocomplete
zgen load zsh-users/zsh-syntax-highlighting

# set up completions
autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit
zgen load zsh-users/zsh-completions

jobscount() {
  local stopped=$(jobs -sp | wc -l)
  local running=$(jobs -rp | wc -l)
  local total=$(($running + $stopped))
  case $total in
  0) echo -n "" ;;
  1) echo -n "₁" ;;
  2) echo -n "₂" ;;
  3) echo -n "₃" ;;
  4) echo -n "₄" ;;
  5) echo -n "₅" ;;
  6) echo -n "₆" ;;
  7) echo -n "₇" ;;
  8) echo -n "₈" ;;
  9) echo -n "₉" ;;
  *) echo -n "₊" ;;
  esac
}

## Hide git prompt in tmux
#function format_git_prompt() {
#  prompt="$(git-prompt)"
#  if [[ -n $prompt && -z $TMUX ]]; then
#    echo "${prompt} "
#  fi
#}

function format_git_prompt() {
  prompt="$(git-prompt)"
  if [[ -n $prompt ]]; then
    echo "${prompt} "
  fi
}

# enable expansions
setopt PROMPT_SUBST

PROMPT='%F{green}%}❱$(jobscount)%f %~ %F{cyan}$(format_git_prompt)%f'

if [[ -n $AWS_VAULT ]]; then
  PROMPT='%F{green}%}❱$(jobscount)%f %F{yellow}$AWS_VAULT%f %~ %F{cyan}$(format_git_prompt)%f'
fi

eighty() {
  echo "--------------------------------------------------------------------------------"
}

alias explainshell="docker run -d --rm --name explainshell -p 5000:5000 chrismwendt/codeintel-bash-with-explainshell"

hash -d icloud=~/Library/Mobile\ Documents/com~apple~CloudDocs
hash -d notes="/Users/louis/Dropbox/Apps/Editorial/notes"
hash -d house="/Users/louis/Dropbox/Apps/Editorial/house"
hash -d lab="/Users/louis/Dropbox/Apps/Editorial/lab"
hash -d ops="/Users/louis/cultureamp/frontend-ops"
hash -d base-infra="/Users/louis/cultureamp/base-infrastructure-for-services"
hash -d kaizen="/Users/louis/cultureamp/kaizen-design-system"

killon() {
  kill -9 $(lsof -t -i :$1)
}

chrome() {
  local url
  if [[ -z $1 ]]; then
    url="https://en.m.wikipedia.org/wiki/Special:Random"
  elif [[ $1 == :* ]]; then
    url="http://localhost$1"
  elif [[ $1 != http* ]]; then
    url="http://$1"
  else
    url=$1
  fi
  "/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary" \
    --app="$url" \
    --remote-debugging-port=9222 \
    &>/dev/null
}

firefox() {
  local url
  if [[ -z $1 ]]; then
    url="https://en.m.wikipedia.org/wiki/Special:Random"
  elif [[ $1 == :* ]]; then
    url="http://localhost$1"
  elif [[ $1 != http* ]]; then
    url="http://$1"
  else
    url=$1
  fi
  "/Applications/Browser.app/Contents/MacOS/firefox" \
    -start-debugger-server \
    -private-window $url
}

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
    -o -type d -print 2>/dev/null | fzf +m) &&
    cd "$dir"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias aws-whoami="aws sts get-caller-identity"

export PATH="/usr/local/opt/mongodb-community@3.4/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias vim="nvim"

# chruby setup
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

export EDITOR=nvim

source /Users/louis/Library/Preferences/org.dystroy.broot/launcher/bash/br

alias krak='open -na "GitKraken" --args -p $(pwd)'

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=10000
setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY       # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY          # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
setopt HIST_IGNORE_SPACE      # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS      # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY            # Don't execute immediately upon history expansion.

zgen load marlonrichert/zsh-hist / main

git-exec() {
  runme="$*"
  echo "$ $runme"
  /bin/bash -c "$runme"
  git add .
  git commit -m "$runme"
}

export GF_PREFERRED_PAGER="delta --theme=ansi-dark --plus-color=#393F2B --plus-emph-color=#4D5733 --minus-color=#4D1A1A --minus-emph-color=#711515"

# postgresql@10 is keg-only, so needs:
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/postgresql@10/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@10/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@10/lib/pkgconfig"

alias godot=/Applications/Godot.app/Contents/MacOS/Godot

PIPENV_IGNORE_VIRTUALENVS=1

alias dot="git --git-dir=$HOME/.dot.git/ --work-tree=$HOME"

killjobs() {
  jobs -p | xargs kill
}

alias julia="julia --banner=no --startup-file=no"
alias j="julia -e"

alias pluto="j 'using Pluto; Pluto.run(port=8080)'"

PATH="/Users/louis/perl5/bin${PATH:+:${PATH}}"
export PATH
PERL5LIB="/Users/louis/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL5LIB
PERL_LOCAL_LIB_ROOT="/Users/louis/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_LOCAL_LIB_ROOT
PERL_MB_OPT="--install_base \"/Users/louis/perl5\""
export PERL_MB_OPT
PERL_MM_OPT="INSTALL_BASE=/Users/louis/perl5"
export PERL_MM_OPT

alias weather="curl v2.wttr.in"

export PATH="$HOME/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias ins=code-insiders
alias notes="code -n ~notes"
alias house="code -n ~house"
alias today="gdate --iso-8601"
alias note="vim ~notes/$(today).md"

if [ $(command -v rlwrap) ]; then
  alias node='NODE_NO_READLINE=1 rlwrap node'
fi

alias focus="yabai -m config mouse_follows_focus"
alias sheep="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"

# {{{
root_dirs=("zioroboco" "cultureamp")
for r in $root_dirs; do
  for f in $(ls /Users/louis/$r); do
    hash -d $f=~/$r/$f
  done
done
# }}}

# {{{
alias " "="clear"
function empty-buffer-to-clear() {
  if [[ $#BUFFER == 0 ]]; then
    BUFFER=" "
  fi
}
zle -N zle-line-finish empty-buffer-to-clear
# }}}

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse"

attach() {
  if [[ -n $1 ]]; then
    project="$1"
  else
    project="$(project-root $(pwd))"
  fi
  if [[ -n $project ]]; then
    project="$(basename $project)"
  else
    project="terminal"
  fi
  tmux attach -t "$project" || tmux new -s "$project"
}

alias a="attach"
alias ta="tmux attach -t"
alias ts="tmux new -s"
alias tls="tmux ls"
alias tkill="tmux kill-session -t"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes {{{

# Set cursor style (DECSCUSR), VT520.
# 0  ⇒  blinking block.
# 1  ⇒  blinking block (default).
# 2  ⇒  steady block.
# 3  ⇒  blinking underline.
# 4  ⇒  steady underline.
# 5  ⇒  blinking bar, xterm.
# 6  ⇒  steady bar, xterm.

function zle-keymap-select() {
  if [[ ${KEYMAP} == vicmd ]] ||
    [[ $1 = 'blinking underline' ]]; then
    echo -ne '\e[3 q'
  elif [[ ${KEYMAP} == main ]] ||
    [[ ${KEYMAP} == viins ]] ||
    [[ ${KEYMAP} = '' ]] ||
    [[ $1 = 'underline' ]]; then
    echo -ne '\e[4 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
  zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
  echo -ne "\e[4 q"
}
zle -N zle-line-init
echo -ne '\e[4 q'                # Use beam shape cursor on startup.
preexec() { echo -ne '\e[4 q'; } # Use beam shape cursor for each new prompt.

# }}}

function ddg() {
  w3m "https://duckduckgo.com/?q=$*"
}
alias "??"="ddg"

function g() {
  w3m "https://www.google.com/search?q=$*"
}
alias "?"="g"

function gl() {
  w3m "https://www.google.com/search?q=$*&btnI"
}
alias "?!"="gl"

function opacity() {
  opacity="${1:-1.0}" yq eval '.background_opacity = env(opacity)' --inplace ~/.opacity.yml
  touch ~/.opacity.yml
}

alias o="opacity 1.0"
alias o1="opacity 0.1"
alias o2="opacity 0.2"
alias o3="opacity 0.3"
alias o4="opacity 0.4"
alias o5="opacity 0.5"
alias o6="opacity 0.6"
alias o7="opacity 0.7"
alias o8="opacity 0.8"
alias o9="opacity 0.9"
alias o0="opacity 0.0"
