return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"saghen/blink.cmp",
		{
			"folke/lazydev.nvim",
			opts = {
				libary = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},

	opts = {
		servers = {
			clangd = {},
			lua_ls = {},
			pyright = {
				settings = {
					python = {
						analysis = {
							typeCheckingMode = "strict",
						}
					}
				}
			},
			tsserver = {},
			html = {},
			gopls = {
				cmd = { "gopls" },
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
							shadow = true,
							unusedwrite = true,
							useany = true,
							undeclaredname = true,
							fillstruct = true,
						},

					}
				}
			}
		},
	},

	config = function(_, opts)
		local lspconfig = require("lspconfig")
		for server, config in pairs(opts.servers) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end,
}
