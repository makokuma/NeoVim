-- lua/core/keymaps.lua

local keymap = vim.keymap

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Insert mode --> Normal mode
keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })
keymap.set("i", "Kj", "<Esc>", { desc = "Exit insert mode" })
keymap.set("i", "kJ", "<Esc>", { desc = "Exit insert mode" })
keymap.set("i", "KJ", "<Esc>", { desc = "Exit insert mode" })

-- Window split
keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<cmd>split<cr>", { desc = "Split horizontally" })

-- window navigation with arrow keys
keymap.set("n", "<Left>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<Down>", "<C-w>j", { desc = "Move to lower window" })
keymap.set("n", "<Up>", "<C-w>k", { desc = "Move to upper window" })
keymap.set("n", "<Right>", "<C-w>l", { desc = "Move to right window" })
