--INFO : Disable autoformat for .env files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.env",
  callback = function()
    vim.b.autoformat = false
  end,
})

-- INFO: set ft for zsh files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.zsh",
  command = "set ft=bash",
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.mdx",
  command = "set ft=markdown",
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.http",
  command = "set ft=http",
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--   group = vim.api.nvim_create_augroup("ts_fix_imports", { clear = true }),
--   desc = "Add missing imports and remove unused imports for TS",
--   pattern = { "*.ts", "*.tsx" },
--   callback = function()
--     local params = vim.lsp.util.make_range_params()
--     params.context = {
--       only = { "source.addMissingImports.ts", "source.removeUnused.ts" },
--     }
--     LazyVim.lsp.action["source.addMissingImports"](params)
--     LazyVim.lsp.action["source.removeUnused"](params)
--   end,
-- })
