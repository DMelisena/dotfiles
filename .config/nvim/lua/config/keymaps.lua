-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap
local cinnamon = require("cinnamon")
cinnamon.setup()
keymap.set("n", "<C-U>", function() cinnamon.scroll("<C-U>zz") end)
keymap.set("n", "<C-D>", function() cinnamon.scroll("<C-D>zz") end)
