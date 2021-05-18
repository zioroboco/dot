set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20
augroup END

source ~/.vimrc

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.config/nvim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.config/nvim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.config/nvim/files/undo/
set viminfo     ='100,n$HOME/.config/nvim/files/info/viminfo

syntax on
colorscheme atlas-warm

hi Normal guifg=none ctermfg=none guibg=none ctermbg=none
hi NonText ctermbg=none
