require("utils")

--  edit vimrc
utils.map("n", "<leader>ev", ":vsplit $MYVIMRC<cr>")

-- source vimrc
utils.map("n", "<leader>sv", ":source $MYVIMRC<cr>")

-- write file
utils.map("n", "<leader>w", ":w<cr>")

-- switch to normal mode
utils.map("i", "jj", "<esc>")

-- switch to normal mode (alternative way)
utils.map("i", "jk", "<esc>")

-- jump to start of line
utils.map("n", "H", "^")

-- jump to end of line
utils.map("n", "L", "$")

-- close all windows apart from current on
utils.map("n", "<leader>on", ":only<cr>")

-- close a window
utils.map("n", "<leader>q", ":close<cr>")

-- copy path of current file to clipboard
utils.map("n", "<leader>fp", ":let @+=expand('%:p')<CR>")

-- set current word to all caps
utils.map("n", "<leader><c-u>", "viwUe")

-- comment out line of HTML
utils.map("n", "<leader>co", "^i<!--<esc>$a--><esc>")

-- open alternate buffer
utils.map("n", "<leader>bb", ":buffer #<cr>")

-- resize window
utils.map("n", "<A-Left>", ":vertical-resize -2<cr>")
utils.map("n", "<A-Right>", ":vertical-resize +2<cr>")
utils.map("n", "<A-Up>", ":resize -2<cr>")
utils.map("n", "<A-Down>", ":resize +2<cr>")
