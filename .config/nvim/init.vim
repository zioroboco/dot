set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20
augroup END

source ~/.vimrc

