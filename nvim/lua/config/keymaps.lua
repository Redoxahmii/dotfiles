-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { remap = true })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { remap = true })
local discipline = require("redox.discipline")
discipline.cowboy()

vim.keymap.set("n", "<CR>", "o<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<S-Enter>", "O<Esc>", { noremap = true, silent = true })
-- vim.keymap.set("x", "<leader>p", [["_dP]])
-- vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })

-- set keymap to use escape to exit terminal mode

vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- set keymap to run terminal

vim.api.nvim_set_keymap("n", "<C-t>", ":terminal<CR>", { noremap = true, silent = true })

-- set ZenMode keymap
vim.api.nvim_set_keymap("n", "<C-z>", ":ZenMode<CR>", { noremap = true, silent = true })
