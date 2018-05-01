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

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

set statusline+=%#warningmsg#
set statusline+=%*
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let mapleader = ","
let localleader = "\\"
let NERDTreeIgnore = ['\.swp$', '\.css$']
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
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
vnoremap <leader>d "_d
nnoremap L $
nnoremap ;w :w<cr>
nnoremap <leader>cn ciwconst<esc>
nnoremap <space>lp diwh"0p
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'tpope/vim-unimpaired'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'epilande/vim-react-snippets'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()


```
