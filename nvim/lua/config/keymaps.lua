-- local discipline = require("redox.discipline")
-- discipline.cowboy()
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<CR>", "o<Esc>", opts)
vim.keymap.set("n", "<S-Enter>", "O<Esc>", opts)

-- Keep my yank register clean
vim.keymap.set("n", "d", '"dd', opts)
vim.keymap.set("v", "d", '"dd', opts)
vim.keymap.set("n", "c", '"cc', opts)
vim.keymap.set("v", "c", '"cc', opts)
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("v", "p", '"_dP', opts)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
-- center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
-- find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)
