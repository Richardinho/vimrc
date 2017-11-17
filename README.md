# vimrc
My .vimrc file

 ```
syntax on
" setting autoindent
set autoindent
set expandtab
set nolist
set number
set path=.,**
set relativenumber
set shiftwidth=2
set tabstop=2
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let NERDTreeShowHidden=1
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
map - ddp
map _ kddpk
nnoremap <space><CR> o<Esc>
nnoremap <Tab><CR> O<Esc>
nnoremap <space>lp diwh"0p
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
 ```
