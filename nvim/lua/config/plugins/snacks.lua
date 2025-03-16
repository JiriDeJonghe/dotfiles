return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			input = { enabled = true },
			notify = { enabled = true },
			notifier = {
				enabled = true,
				style = "compact",
			},
			indent = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },

		},
		keys = {
			{ "<space>z", function() Snacks.zen() end, { desc = "Toggle [Z]en Mode" } }
		}
	}
}
