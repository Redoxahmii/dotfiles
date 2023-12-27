-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { remap = true })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { remap = true })
local discipline = require("redox.discipline")
discipline.cowboy()
vim.keymap.set("n", "<CR>", "o<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<S-Enter>", "O<Esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })
