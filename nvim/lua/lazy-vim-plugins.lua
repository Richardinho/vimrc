return {
	{ "akinsho/bufferline.nvim", enabled = false },
	{ "tpope/vim-fugitive" },
	{ "echasnovski/mini.pairs", enabled = false },
	{ "folke/noice.nvim", enabled = false },
	{ "folke/persistence.nvim", enabled = false },
	{
		"jlanzarotta/bufexplorer",
		keys = {
			"<leader>be",
			":BufExplorer<cr>",
			desc = "open bufexplorer",
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"s1n7ax/nvim-window-picker",
			config = function()
				require("window-picker").setup()
			end,
		},
		opts = {
			filesystem = {
				follow_current_file = {
					enabled = false,
				},
			},
		},
		keys = {
			{ "<leader>be", false },
			{
				"<leader>tf",
				function()
					require("neo-tree.command").execute({
						toggle = false,
						action = "focus",
						reveal = true,
						position = "left",
					})
				end,
				desc = "Focus Current file in Explorer",
			},
		},
	},
}
