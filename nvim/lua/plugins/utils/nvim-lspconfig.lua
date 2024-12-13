--- [INFO: ignore specific diagnostics]
return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              hint = { enable = true },
            },
          },
        },
        vtsls = {
          settings = {
            implicitProjectConfiguration = {
              checkJs = true,
            },
          },
          handlers = {
            ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
              if result.diagnostics == nil then
                return
              end
              local idx = 1
              while idx <= #result.diagnostics do
                local entry = result.diagnostics[idx]
                if entry.code == 80001 then
                  table.remove(result.diagnostics, idx)
                else
                  idx = idx + 1
                end
              end
              vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
            end,
          },
        },
      },
    },
  },
}
