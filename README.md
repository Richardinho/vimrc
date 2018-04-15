# vimrc
My .vimrc file

 ```
syntax on
set autoindent
set expandtab
set nolist
set number
set path=.,**
set relativenumber
set shiftwidth=2
set tabstop=2
set autowriteall

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let NERDTreeShowHidden=1
let mapleader = ","
let localleader = "\\"
augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
:autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
:abbrev fn function
:abbrev cn const
:abbrev io import
inoremap jk <esc>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L $
nnoremap ;w :w<cr>
nnoremap <leader>cn ciwconst<esc>
nnoremap <space>lp diwh"0p
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'vim-syntastic/syntastic'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'tpope/vim-unimpaired'
  Plug 'leafgarland/typescript-vim'
call plug#end()
 ```
