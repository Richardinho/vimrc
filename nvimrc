set number
set relativenumber
set autoindent
set shiftwidth=2
set tabstop=2
set nolist
set listchars=eol:⏎,tab:->,trail:.,nbsp:.,space:.


# random comment
let mapleader = " " 
let NERDTreeShowLineNumbers=1

"  open .vimrc for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"  source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"  write file
nnoremap <leader>w :w<cr>

"  switch to normal mode 
inoremap jj <esc>

" close all windows apart from current on
nnoremap <leader>on :only<cr>

"  close a window
nnoremap <leader>q :close<cr>

"  set current word to all caps
nnoremap <leader><c-u> viwUe

"  jump to start of line
nnoremap H ^

"  jump to end of line
nnoremap L $

" format JSON
" TODO: Make this work on ranges, not just whole file
nnoremap <leader>so :%!python -m json.tool<cr>

" Fugitive mappings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gw :Gwrite<cr>

" NERDTree mappings
nnoremap <leader>tr :NERDTree<cr>
nnoremap <leader>tf :NERDTreeFocus<cr>
nnoremap <leader>v :NERDTreeFind<cr>

autocmd BufRead,BufNewFile *.ts set suffixesadd+=.ts
