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


map("n", "gd", builtin.lsp_definitions, { desc = "[G]oto [D]efinition" })
map("n", "gD", builtin.lsp_definitions, { desc = "[G]oto [D]eclaration" })
map("n", "gr", builtin.lsp_references, { desc = "[G]oto [R]eferences" })
map("n", "gI", builtin.lsp_implementations, { desc = "[G]oto [I]mplementation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]ename [S]ymbol" })

-- Snacks Picker
local picker = Snacks.picker
map("n", "<leader>sg", picker.grep, { desc = "[S]earch [G]rep" })
map({ "n", "v" }, "<leader>sw", picker.grep_word, { desc = "[S]earch [W]ord under cursor" })
map("n", "<leader>sf", picker.files, { desc = "[S]earch [F]iles" })

-- TODO
map("n", "<leader>nt", function() require("todo-comments").jump_next() end, { desc = "[N]ext [T]ODO" })
map("n", "<leader>pt", function() require("todo-comments").jump_prev() end, { desc = "[P]revious [T]ODO" })

-- Obsidian
map('n', "<leader>on", '<cmd>ObsidianNewFromTemplate<cr>', { desc = "[O]bsidian [N]ew" })
map('n', "<leader>od", '<cmd>ObsidianToday<cr>', { desc = "[O]bsidian [D]aily" })
map('n', "<leader>os", '<cmd>ObsidianSearch<cr>', { desc = "[O]bsidian [S]earch" })
map('n', "<leader>ot", '<cmd>ObsidianTemplate<cr>', { desc = "[O]bsidian [T]emplate" })
map('n', "<leader>ob", '<cmd>ObsidianBacklinks<cr>', { desc = "[O]bsidian [B]acklinks" })

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
