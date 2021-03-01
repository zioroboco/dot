set nocompatible
filetype plugin indent on
syntax on
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set hidden
set showmode
set showcmd
set ttyfast
set lazyredraw
set splitbelow
set splitright
set wrapscan

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" no ruler
set laststatus=0
set noruler

set rtp+=/usr/local/opt/fzf

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

"colorscheme boring
colorscheme atlas-warm

hi Normal guifg=none ctermfg=none guibg=none ctermbg=none
hi NonText ctermbg=none

set mouse=a

"" visual-at.vim {{{
"" https://github.com/stoeffel/.dotfiles/blob/master/vim/visual-at.vim
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
""" }}}

