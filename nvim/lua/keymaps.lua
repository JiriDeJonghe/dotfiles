local map = vim.keymap.set

-- Tabs and splits
map("n", "<leader>tn", ":tabnew<CR>", { desc = "[T]ab [N]ew" })
map("n", "<leader>tc", ":tabclose<CR>", { desc = "[T]ab [C]lose" })

map("n", "<leader>vs", ":vsplit<CR>", { desc = "[V]ertical [S]plit" })
map("n", "<leader>hs", ":split<CR>", { desc = "[H]orizontal [S]plit" })
map("n", "<leader>sc", ":w<CR>:close<CR>", { desc = "[S]plit [C]lose" })

map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })


-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
map("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
map("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
map("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
map("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
map("n", "<leader>en", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end)
map("n", "<leader>ep", function()
	builtin.find_files {
		cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
	}
end)
local multigrep = require("config.telescope.multigrep")
map('n', "<space>sg", multigrep.live_multigrep, { desc = "[S]earch [G]rep" })


map("n", "gd", builtin.lsp_definitions, { desc = "[G]oto [D]efinition" })
map("n", "gD", builtin.lsp_definitions, { desc = "[G]oto [D]eclaration" })
map("n", "gr", builtin.lsp_references, { desc = "[G]oto [R]eferences" })
map("n", "gI", builtin.lsp_implementations, { desc = "[G]oto [I]mplementation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]ename [S]ymbol" })

-- Quickfix List
map("n", "<M-j>", "<cmd>cnext<CR>")
map("n", "<M-k>", "<cmd>cprev<CR>")
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Execution
map("n", "<leader>x", ":.lua<CR>", { desc = "E[X]ecute" })
map("v", "<leader>x", ":.lua<CR>", { desc = "E[X]ecute" })

-- Other
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("t", "<esc><esc>", "<c-\\><c-n>")
