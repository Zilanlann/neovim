-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- floating terminal

-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- use `vim.keymap.set` instead
local map = vim.keymap.set

local lazyterm = function()
  Util.float_term(nil, { cwd = Util.get_root() })
end
map("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
map("n", "<leader>fT", function()
  Util.float_term()
end, { desc = "Terminal (cwd)" })
map("n", "<c-/>", function()
  Util.float_term()
end, { desc = "Terminal (cwd)" })
map("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })
