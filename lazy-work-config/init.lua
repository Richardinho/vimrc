-- Lazy.nvim Bootstrap
vim.g.mapleader = " "
vim.opt.tabstop =2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end


vim.opt.rtp:prepend(lazypath)


local function transform_config(config)
  local transformed = {}
  for _, item in ipairs(config) do
    table.insert(transformed, {
      item.mapping,
      function()
        require('fzf-lua')[item.command]()
      end,
      desc = item.desc,
    })
  end
  return transfomed
end

local key_config = {
  { mapping = '<C-\\>', command = 'buffers', desc = 'buffers' },  
  { mapping = '<C-p>f', command = 'files', desc = 'files' },  
  { mapping = '<C-p>k', command = 'builtin', desc = 'builtint' },  
  { mapping = '<C-p>g', command = 'live_grep_glob', desc = 'live grep glob' },  
  { mapping = '<C-p>j', command = 'grep_project', desc = 'grep_project' },  
  { mapping = '<C-p>h', command = 'help_tags', desc = 'help tags' },  
  { mapping = '<C-p>r', command = 'resume', desc = 'resume' },  
  { mapping = '<leader>gw', command = 'grep_cword', desc = 'grep word under cursor' },  
}


-- Lazy.nvim Setup
require("lazy").setup({
  {
    "neovim/nvim-lspconfig" , -- LSP configuration
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      lspconfig.ts_ls.setup { capabilities = capabilities }
      lspconfig.lua_ls.setup { capabilities = capabilities }
    end,
  },
  {
    "preservim/nerdtree",
    keys = {
      { '<leader>tr', '<cmd>NERDTree<cr>', desc = 'open NERDTree' },
      { '<leader>tf', '<cmd>NERDTreeFocus<cr>', desc = 'focus NERDTree' },
      { '<leader>tv', '<cmd>NERDTreeFind<cr>', desc = 'find NERDTree' },
      { '<leader>tc', '<cmd>NERDTreeClose<cr>', desc = 'close NERDTree' },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = transform_config(key_config),
    config = function()
      require("fzf-lua").setup{
        keymap = {
          builtin = {
            ["<C-h>"] = "hide",
            ["<C-l>"] = "toggle-help",
            ["<C-f>"] = "toggle-fullscreen",
            ["<C-r>"] = "toggle-preview",
            ["<C-d>"] = "preview-page-down",
            ["<C-u>"] = "preview-page-up",
          }
        },
        winopts = {
          -- when true, makes picker cover whole screen
          fullscreen = false,
        },
      }
    end
  },
  {
  'jlanzarotta/bufexplorer'
  },
  {
    'tpope/vim-fugitive'
  },
  {

    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      local ls = require("luasnip")
      -- some shorthands...
      local s = ls.snippet
      local t = ls.text_node
      print('HELLLOOOOOOO')
      local snippets = {
        s("sat", {
          t("hello richard. today is Saturday"),
        })
      }

      ls.add_snippets('javascript', snippets)
      print('GOOOOOOOOOOODD')
    end
  },
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {
      keymap = { preset = 'default',

      ['<C-x>'] = {'accept' }

    },
      appearance = {
        nerd_font_variant = 'mono'
      },
      signature = {
        enabled = true
      },
      completion = {
	      keyword = {
		      range = 'full'
	      }
      }
    },
  }
})

-- General Neovim Settings
vim.cmd("colorscheme koehler") -- Set preferred colorscheme

