vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "open Oil" })

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "open diagnostics in float" })

vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "close window" })
