set number
set relativenumber
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set nolist
set listchars=eol:⏎,tab:->,trail:.,nbsp:.,space:.


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

"  switch to normal mode (alternative way)
inoremap jk <esc>

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

" comment out line of HTML
nnoremap <leader>co ^i<!--<esc>$a--><esc>

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
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html Prettier

call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'scrooloose/NERDTree'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-fugitive'
  Plug 'jlanzarotta/bufexplorer'
	" post install (yarn install | npm install) then load plugin only for editing supported files
	Plug 'prettier/vim-prettier', {
		\ 'do': 'npm install --frozen-lockfile --production',
		\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()
