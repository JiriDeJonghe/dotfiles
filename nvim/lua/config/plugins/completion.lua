return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"L3M0N4D3/LuaSnip"
		},

		version = "v0.*",

		opts = {
			keymap = { preset = "default" },

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},

			-- experimental signature help support
			signature = { enabled = true },
		},
	},
}
