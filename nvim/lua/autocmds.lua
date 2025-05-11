vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = "no"
		vim.opt_local.cursorline = false
		vim.cmd("startinsert")
	end,
})

vim.api.nvim_create_autocmd('VimResized', {
	group = vim.api.nvim_create_augroup('auto-resize', { clear = true }),
	callback = function()
		vim.cmd('wincmd =')
	end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
	group = vim.api.nvim_create_augroup('format-on-save', { clear = true }),
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

vim.api.nvim_create_autocmd('TermClose', {
	group = vim.api.nvim_create_augroup('custom-term-close', { clear = true }),
	callback = function()
		vim.cmd('bd!')
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "h", "javascriptreact", "typescriptreact" },
	callback = function()
		vim.bo.shiftwidth = 2
		vim.bo.softtabstop = 2
		vim.bo.expandtab = true
	end,
})
