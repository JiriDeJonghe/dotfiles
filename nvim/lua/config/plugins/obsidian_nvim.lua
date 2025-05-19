return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"saghen/blink.cmp",
		"folke/snacks.nvim",
		"nvim-treesitter/nvim-treesitter"
	},
	---@module 'obsidian'
	---@type obsidian.config.ClientOpts
	opts = {
		workspaces = {
			{
				name = "my_zettelkasten",
				path = "~/Documents/zettelkast",
			},
		},
		daily_notes = {
			folder = "00-Inbox/Dailies",
			template = "daily_template.md",
			date_format = "%Y-%m-%d",
			default_tags = { "Daily Notes" },
		},
		new_notes_location = "current_dir",
		completion = {
			blink = true,
			min_chars = 2,
		},
		templates = {
			folder = "99-Templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
		},
		picker = {
			name = "snacks.pick",
		},
	},
}
