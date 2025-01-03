-- Numbering
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Indentation
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Line wrap
vim.opt.wrap = true
vim.opt.breakindent = true

-- Splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scrolloff
vim.opt.scrolloff = 999

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Other
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.signcolumn = "yes"
