syntax on
"  options {{{
set autoindent
set relativenumber
set autowriteall
set nonumber
set expandtab
set hidden
set iskeyword+=-
set path=.,**
set shiftwidth=2
"}}}

" STATUS LINE {{{
set statusline=status:

"  full path to the file in the buffer
set statusline+=%F

" modified flag
set statusline+=%m

" filetype
set statusline+=\ %y

"  buffer number
set statusline+=\ buffer\ number:\ %n

"  line number
set statusline+=\ line:\ %l

"  always show status line even if just one window open
set laststatus=2

"}}}

set tabstop=2
set mouse=a
set incsearch

"  UltiSnips {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
"}}}

let mapleader = " " 
let localleader = "\\"

:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:vnoremap <leader>" <esc>`<i"<esc>`>lli"<esc> 

" NERDTree config {{{
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.swp$']
let NERDTreeAutoCenter=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinSize=50
" }}}

"  NORMAL MODE MAPPINGS

"  insert Lorem Ipsum
nnoremap <leader>lo :read ~/lorem-ipsum<cr>

"  empty current line
nnoremap <leader>dd cc<esc>


"  set current word to all caps
nnoremap <leader><c-u> viwUe
"  go to previous tab
nnoremap <leader>gt gT 

"  close a window
nnoremap <leader>q :close<cr>

"  open .vimrc for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" search backwards on line
nnoremap <leader>t T
nnoremap <leader>f F

"  source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"  jump to start of line
nnoremap H ^

"  jump to end of line
nnoremap L $

"  write file
nnoremap <leader>w :w<cr>

" close all windows apart from current on
nnoremap <leader>on :only<cr>

" create empty line below current on, move to it without leaving normal mode
nnoremap <leader>lb o <esc>

" Fugitive shortcuts {{{
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gw :Gwrite<cr>
"}}}

" insert tab
nnoremap <tab> i<tab><esc>

" markdown filed settings {{{
augroup filetype_markdown
  autocmd!
  autocmd FileType markdown onoremap <buffer> ih :<c-u>execute "normal! ?\\(^--\\+$\\)\\\|\\(^==\\+$\\)\r:nohlsearch\rkvg_"<cr>
  autocmd FileType markdown setlocal statusline=this\ is\ markdown\ %f
augroup END
"}}}

" Javascript file settings {{{
augroup filetype_javascript
  autocmd!
  autocmd FileType javascript setlocal statusline=javascript
  autocmd FileType javascript setlocal statusline+=%f\ %l
augroup END
"}}}

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" NERDTree shortcuts {{{
nnoremap <leader>tr :NERDTree<cr>
nnoremap <leader>tf :NERDTreeFocus<cr>
nnoremap <leader>v :NERDTreeFind<cr>
" }}}

"  INSERT MODE MAPPINGS

"  switch to normal mode 
inoremap jj <esc>


ab imrt import React from 'react';
ab imst import styled from 'styled-components'; 


"  convert word to all caps
inoremap <c-u> <esc>viwUea

"  abbreviations
iabbrev adn and
iabbrev boyd body
iabbrev boty body


onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>


"  PLUGINS {{{

call plug#begin()

  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'leafgarland/typescript-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'epilande/vim-react-snippets'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()
"}}}
