require "utils"

-- Fugitive mappings
utils.map('n', '<leader>gs', ':Gstatus<cr>')
utils.map('n', '<leader>gd', ':Gdiff<cr>')
utils.map('n', '<leader>gw', ':Gwrite<cr>')
utils.map('n', '<leader>gl', ':Git log --oneline<cr>');
