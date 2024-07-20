vim.cmd([[
  call plug#begin('~/.config/nvim/autoload/plugged')
    "  file tree
    Plug 'scrooloose/NERDTree'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Git integration
    Plug 'tpope/vim-fugitive'

    " Telescope
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.3' }

    Plug 'nvim-lua/plenary.nvim'

    " snippets
    Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
    Plug 'rafamadriz/friendly-snippets'

    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-commentary'

    " buffer list
    Plug 'jlanzarotta/bufexplorer'

    " lsp
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'jose-elias-alvarez/null-ls.nvim'

    " cmp
   " Plug 'hrsh7th/cmp-nvim-lsp'
   " Plug 'hrsh7th/cmp-buffer'
   " Plug 'hrsh7th/cmp-path'
   " Plug 'hrsh7th/cmp-cmdline'
   " Plug 'hrsh7th/nvim-cmp'

    " For luasnip users.
    Plug 'saadparwaiz1/cmp_luasnip'

  call plug#end()
  ]])
