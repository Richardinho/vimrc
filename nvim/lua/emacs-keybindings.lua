require "utils"

-- EMACS-STYLE bindings

-- start of line
utils.map('c', '<C-A>', '<Home>')

-- end of line
utils.map('c', '<C-E>', '<End>')

-- back one word
utils.map('c', '<Esc>b', '<S-Left>')

-- forward one word
utils.map('c', '<Esc>f', '<S-Right>')

-- back one character
utils.map('c', '<C-B>', '<Left>')

-- forward one character
utils.map('c', '<C-F>', '<Right>')

-- delete character under cursor
utils.map('c', '<C-D>', '<Del>')

-- recall newer command-line
utils.map('c', '<C-N>', '<Down>')

-- recall previous (older) command-line
utils.map('c', '<C-P>', '<Up>')

-- delete whole line
utils.map('c', '<C-U>', '<C-E><C-U>')

vim.cmd([[
  
  " delete from cursor to end of line

  func! KillLineToEnd()
      return strpart(getcmdline(), 0, getcmdpos()-1)
  endfunc

  cnoremap <C-K> <C-\>eKillLineToEnd()<CR>
]])
