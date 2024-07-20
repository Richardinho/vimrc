vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.list = false

vim.g.mapleader = " "

vim.cmd([[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
  set nofoldenable " Disable folding at startup.
]])
