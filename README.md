# vimrc
My .vimrc file

 ```

syntax on
set autoindent
set number
set autochdir
set nolist
set tabstop=2
set shiftwidth=2
set expandtab
set path=.,**
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let NERDTreeShowHidden=1
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
call plug#end()

 ```
