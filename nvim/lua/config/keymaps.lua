local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Replace hex with HSL
map("n", "<leader>rh", function()
  require("redox.hsl").replaceHexWithHSL()
end)

-- Enter to add spaces
map("n", "<CR>", "o<Esc>", opts)
map("n", "<S-Enter>", "O<Esc>", opts)

-- Keep my yank register clean
map("n", "d", '"dd', opts)
map("v", "d", '"dd', opts)
map("n", "c", '"cc', opts)
map("v", "c", '"cc', opts)
map("n", "x", '"_x', opts)
map("v", "p", '"_dP', opts)
map("n", "yc", "yy<cmd>normal gcc<CR>p", { desc = "Yank and copy" })

-- Go to next/prev diagnostic
map("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
map("n", "<C-k>", function()
  vim.diagnostic.goto_prev()
end, opts)

-- Delete backwards
map("n", "dw", 'vb"_d')

-- center
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- find and center
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)
