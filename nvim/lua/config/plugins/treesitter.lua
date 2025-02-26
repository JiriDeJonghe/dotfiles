return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
		},
		config = function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = {

					-- Vim
					"lua",
					"vim",
					"vimdoc",

					-- Standard
					"c",
					"bash",
					"python",

					-- Web dev
					"html",
					"javascript",
					"typescript",
					"css",

					-- Go
					"go",
					"gomod",
					"gowork",
					"gosum",

					-- Notetaking
					"markdown",
					"markdown_inline",
					"latex",

					-- Others
					"json",
					"yaml",
					"toml",
					"regex",
					"dockerfile",
					"git_rebase",
					"gitignore",
				},

				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = false,

				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,

					additional_vim_regex_highlighting = { "ruby" },
				},
				indent = { enable = true, disable = { "ruby" } },
			}
		end
	}
}
