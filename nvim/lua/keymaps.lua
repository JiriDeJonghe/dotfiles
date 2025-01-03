-- Tabs and splits
vim.keymap.set("n", "<space>tn", ":tabnew<CR>", { desc = "[T]ab [N]ew" })
vim.keymap.set("n", "<space>vs", ":vsplit<CR>", { desc = "[V]ertical [S]plit" })
vim.keymap.set("n", "<space>hs", ":split<CR>", { desc = "[H]orizontal [S]plit" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })


-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<space>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<space>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<space>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<space><space>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<space>en", function()
  builtin.find_files({
    cwd = vim.fn.stdpath("config"),
  })
end)
vim.keymap.set("n", "<space>ep", function()
  builtin.find_files {
    cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
  }
end)
-- vim.keymap.set("n", "gd", builtin.lsp_defintions, { desc = "[G]oto [D]efinition" })
-- vim.keymap.set("n", "gD", builtin.lsp_defintions, { desc = "[G]oto [D]eclaration" })
-- vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "[G]oto [R]eferences" })
-- vim.keymap.set("n", "gI", builtin.lsp_iplementation, { desc = "[G]oto [I]mplementation" })


-- Quickfix List
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

-- Execution
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":.lua<CR>")

-- Terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<space>ot", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
end, { desc = "[O]pen [T]erminal" })

-- Other
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
