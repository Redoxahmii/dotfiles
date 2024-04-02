-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- INFO : Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- INFO: set ft for zsh files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.zsh",
  command = "set ft=bash",
})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "hyprland.conf",
  command = "set ft=hyprlang",
})

-- INFO : mardown was previously added inside json pattern
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", ".md" },
  callback = function()
    vim.opt.conceallevel = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

-- INFO:  autcmd for restoring session auto
-- vim.api.nvim_create_autocmd("VimEnter", {
--   pattern = "*",
--   command = "lua require('persistence').load()",
-- })

-- INFO: LSP Conflict VUEJS
local lsp_conficts, _ = pcall(vim.api.nvim_get_autocmds, { group = "LspAttach_conflicts" })
if not lsp_conficts then
  vim.api.nvim_create_augroup("LspAttach_conflicts", {})
end
vim.api.nvim_create_autocmd("LspAttach", {
  group = "LspAttach_conflicts",
  desc = "prevent tsserver and volar competing",
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end
    local active_clients = vim.lsp.get_active_clients()
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    -- prevent tsserver and volar competing
    -- if client.name == "volar" or require("lspconfig").util.root_pattern("nuxt.config.ts")(vim.fn.getcwd()) then
    -- OR
    if client then
      if client.name == "volar" then
        for _, client_ in pairs(active_clients) do
          -- stop tsserver if volar is already active
          if client_.name == "tsserver" then
            client_.stop()
          end
        end
      elseif client.name == "tsserver" then
        for _, client_ in pairs(active_clients) do
          -- prevent tsserver from starting if volar is already active
          if client_.name == "volar" then
            client.stop()
          end
        end
      end
    end
  end,
})
