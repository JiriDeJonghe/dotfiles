-- Numbering
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Indentation
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
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
vim.opt.scrolloff = 10

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Backup
vim.opt.undofile = true
vim.opt.backup = true
vim.opt.backupdir = vim.fn.stdpath("data") .. "/backups"
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Other
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.signcolumn = "auto"
vim.opt.termguicolors = true
vim.opt.fileencoding = "utf-8"
