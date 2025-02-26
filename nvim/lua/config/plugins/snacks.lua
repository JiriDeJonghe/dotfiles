return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			notifier = {
				enabled = true,
				style = "compact",
			},
			dim = { enabled = true }
		},
		keys = {
			{ "<space>z", function() Snacks.zen() end, { desc = "Toggle [Z]en Mode" } }
		}
	}
}
