local opts = { noremap = true, silent = true }
local signs = require("gitsigns")
local map = vim.keymap.set

--INFO: Replace hex with HSL
map("n", "<leader>rh", function()
  require("redox.hsl").replaceHexWithHSL()
end, { desc = "Replace Hex with HSL" })
map("n", "<leader>rr", function()
  require("redox.hsl").replaceHSLtoHex()
end, { desc = "Replace HSL with Hex" })

--INFO: Enter to add spaces
map("n", "<CR>", "o<Esc>", opts)
map("n", "<CR>", "o<Esc>", opts)
map("n", "<S-Enter>", "O<Esc>", opts)

--INFO: Keep my yank register clean
map("n", "d", '"dd', opts)
map("v", "d", '"dd', opts)
map("n", "c", '"cc', opts)
map("v", "c", '"cc', opts)
map("n", "x", '"_x', opts)
map("v", "p", '"_dP', opts)
map("n", "yc", "yy<cmd>normal gcc<CR>p", { desc = "Yank and copy" })

--INFO: Go to next/prev hunks
map("n", "<C-j>", function()
  signs.nav_hunk("next")
end, opts)
map("n", "<C-k>", function()
  signs.nav_hunk("prev")
end, opts)

--INFO: Delete backwards (will remove cause don't use much)
map("n", "dw", 'vb"_d')

--INFO: center
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

--INFO: find and center
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

--INFO: use escape to go out in temrinal
map("t", "<Esc>", "<C-\\><C-n>", opts)
