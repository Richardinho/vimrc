syntax on

set viminfo='100,<50,s10,%
set autoindent
set number
set relativenumber
set expandtab
set hidden
set iskeyword+=-
set path=.,**
set shiftwidth=2
set tabstop=2
set mouse=a
set incsearch
set hlsearch
set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<,space:.
set nolist

let g:tsuquyomi_completion_detail = 1
let g:typescript_ignore_browserwords=0

" allow backspace over end of line and start of insert
set backspace=eol,start

:nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

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

"  lines in buffer
set statusline+=\ of:\%L

"  always show status line even if just one window open
set laststatus=2

let mapleader = " " 
let localleader = "\\"

let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.swp$']
let NERDTreeAutoCenter=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinSize=50

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

" create empty line below current one, move to it without leaving normal mode
nnoremap <leader>lb o <esc>

nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gw :Gwrite<cr>

" insert tab
nnoremap <tab> i<tab><esc>

" markdown file settings {{{
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

nnoremap <leader>tr :NERDTree<cr>
nnoremap <leader>tf :NERDTreeFocus<cr>
nnoremap <leader>v :NERDTreeFind<cr>

"  INSERT MODE MAPPINGS

"  switch to normal mode 
inoremap jj <esc>

ab imrt import React from 'react';

ab imst import styled from 'styled-components'; 

" find files and populate the quickfix list
fun! FindFiles(filename)
  let error_file = tempname()
  silent exe '!find . -name "'.a:filename.'" | xargs file | sed "s/:/:1:/" > '.error_file
  set errorformat=%f:%l:%m
  exe "cfile ". error_file
  copen
  call delete(error_file)
endfun
command! -nargs=1 FindFile call FindFiles(<q-args>)


" show white space at end of line as error
nnoremap <leader>s :match Error /\s\+\_$/<cr>
nnoremap <leader>S :match none<cr>


" delete two lines but allow them to be undone separately
" seems a little hacky having to go into insert mode during this command, but
" I couldn't find a way of breaking the undo sequence in normal mode
nnoremap <leader>di ddi<C-G>u<esc>dd

" put a semicolon at the end of the current line
nnoremap <leader>; :execute "normal! mqA;\e`q"<cr>

"  abbreviations
iabbrev adn and
iabbrev boyd body
iabbrev boty body

onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

"  Plugins
call plug#begin()
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug 'Quramy/tsuquyomi'
  Plug 'jlanzarotta/bufexplorer'
"  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"   Plug 'leafgarland/typescript-vim'
"  Plug 'pangloss/vim-javascript'
"  Plug 'mxw/vim-jsx'
"  Plug 'epilande/vim-react-snippets'
"  Plug 'SirVer/ultisnips'
"  Plug 'honza/vim-snippets'
call plug#end()
autocmd FileType typescript,typescriptreact nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript,typescriptreact nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

