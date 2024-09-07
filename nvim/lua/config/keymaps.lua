local discipline = require("redox.discipline")
discipline.cowboy()

vim.keymap.set("n", "<CR>", "o<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Enter>", "O<Esc>", { noremap = true, silent = true })

-- Keep my yank register clean
vim.keymap.set("n", "d", '"dd', { noremap = true, silent = true })
vim.keymap.set("v", "d", '"dd', { noremap = true, silent = true })
vim.keymap.set("n", "c", '"cc', { noremap = true, silent = true })
vim.keymap.set("v", "c", '"cc', { noremap = true, silent = true })
vim.keymap.set("n", "x", '"_x', { noremap = true, silent = true })
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
