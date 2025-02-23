return {
	"nvim-neo-tree/neo-tree.nvim",
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
}
