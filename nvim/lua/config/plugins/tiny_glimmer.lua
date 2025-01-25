return {
	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		opts = {},
		config = function()
			require('tiny-glimmer').setup({
				enabled = false,
				default_animation = "pulse",
				refresh_interval_ms = 6,
				animations = {
					fade = {
						from_color = "#c84865",
						to_color = "DiffAdd",
					},
					pulse = {
						from_color = "#c84865",
						to_color = "DiffAdd",
					},
				},
			})
		end
	}
}
