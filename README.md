# vimrc
My .vimrc file

 ```
echo '>^.^<'
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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_css_checkers = ['stylelint']


let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let NERDTreeShowHidden=1
let mapleader = ","
:abbrev fn function
inoremap jk <esc>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L $
nnoremap ;w :w<cr>
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
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
 ```
