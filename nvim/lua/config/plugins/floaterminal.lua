-- config/plugins/floaterminal.lua
local M = {}

local state = {
	terminal = {
		buf = -1,
		win = -1
	}
}

-- Function to create a floating terminal
local function create_terminal(opts)
	opts = opts or {}
	local height = opts.height or math.floor(vim.o.lines * 0.3)

	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end

	local current_win = vim.api.nvim_get_current_win()
	vim.cmd('botright ' .. height .. 'split')
	local win = vim.api.nvim_get_current_win()
	vim.api.nvim_win_set_buf(win, buf)
	vim.api.nvim_win_set_option(win, 'number', false)
	vim.api.nvim_win_set_option(win, 'relativenumber', false)
	vim.api.nvim_win_set_option(win, 'cursorline', false)
	vim.api.nvim_win_set_option(win, 'signcolumn', 'no')

	return { buf = buf, win = win }
end

-- Create the user command for the floating terminal
local function toggle_terminal()
	if not vim.api.nvim_win_is_valid(state.terminal.win) then
		state.terminal = create_terminal { buf = state.terminal.buf }
		if vim.bo[state.terminal.buf].buftype ~= "terminal" then
			vim.cmd.terminal()
			vim.cmd('startinsert')
		end
	else
		vim.api.nvim_win_hide(state.terminal.win)
	end
end

function M.setup()
	vim.api.nvim_create_user_command("Terminal", toggle_terminal, {})
	vim.keymap.set('n', '<leader>tt', toggle_terminal,
		{ desc = "[T]oggle [T]erminal", noremap = true, silent = true })
end

return {
	dir = '~/.config/nvim/lua/config/plugins/',
	name = "terminal",
	lazy = false,
	config = function()
		M.setup()
	end,
}
