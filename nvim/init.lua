vim.g.leader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end

vim.opt.rtp:prepend(lazypath)

require("config.lazy")
require("opts")
require("keymaps")
require("autocmds")
