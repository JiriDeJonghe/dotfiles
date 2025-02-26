-- config/plugins/floaterminal.lua
local M = {}

local state = {
	floating = {
		buf = -1,
		win = -1
	}
}

-- Function to create a floating terminal
local function create_float_term(opts)
	-- Calculate window size based on editor dimensions
	opts = opts or {}
	local width = opts.width or math.floor(vim.o.columns * 0.8)
	local height = opts.height or math.floor(vim.o.lines * 0.8)
	-- Calculate starting position to center the window
	local col = math.floor((vim.o.columns - width) / 2)
	local row = math.floor((vim.o.lines - height) / 2)
	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end
	-- Create the floating window
	-- Define window properties
	opts = {
		relative = 'editor',
		row = row,
		col = col,
		width = width,
		height = height,
		style = 'minimal',
		border = 'rounded',
	}
	local win = vim.api.nvim_open_win(buf, true, opts)
	return { buf = buf, win = win }
end

-- Create the user command for the floating terminal
local function toggle_terminal()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		state.floating = create_float_term { buf = state.floating.buf }
		if vim.bo[state.floating.buf].buftype ~= "terminal" then
			vim.cmd.terminal()
		end
	else
		vim.api.nvim_win_hide(state.floating.win)
	end
end

function M.setup()
	vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})
	vim.keymap.set('n', '<leader>tt', toggle_terminal,
		{ desc = "[T]oggle [T]erminal", noremap = true, silent = true })
end

return {
	dir = '~/.config/nvim/lua/config/plugins/',
	name = "floaterminal",
	lazy = false,
	config = function()
		M.setup()
	end,
}
