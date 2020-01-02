syntax on
set autoindent
set relativenumber
set number
set autowriteall
set expandtab
set hidden
set iskeyword+=-
set number
set path=.,**
set shiftwidth=2
set statusline+=%#warningmsg#
set statusline+=%*
set tabstop=2

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let mapleader = ","
let localleader = "\\"


" NERDTree config
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

"  close a window
nnoremap <Leader>cl :close<CR>

"  open .vimrc for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"  source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"  jump to start of line
nnoremap H ^

"  jump to end of line
nnoremap L $

"  write file
nnoremap ;w :w<cr>


"  send line to top of file
nnoremap <Leader>ltt ddggP

" Fugitive shortcuts
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>

" NERDTree shortcuts
nnoremap <Leader>tr :NERDTree<CR>
nnoremap <Leader>tt :NERDTreeToggle<CR>
nnoremap <Leader>tf :NERDTreeFocus<CR>
nnoremap <Leader>v :NERDTreeFind<CR>

"  INSERT MODE MAPPINGS

"  switch to normal mode
inoremap jk <esc>

"  convert word to all caps
inoremap <c-u> <esc>viwUea

"  PLUGINS
call plug#begin('~/.vim/plugged')
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
