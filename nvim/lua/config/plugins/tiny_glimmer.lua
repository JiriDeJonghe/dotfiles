return {
	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		opts = {},
		config = function()
			require('tiny-glimmer').setup({
				enabled = true,
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
					reverse_fade = {
						from_color = "#c84865",
						to_color = "DiffAdd",
					},
				},
				overwrite = {
					auto_map = true,
					search = {
						enabled = true,
						default_animation = "fade",
					},
					paste = {
						enabled = true,
						default_animation = "reverse_fade",
					}
				}
			})
		end
	}
}
