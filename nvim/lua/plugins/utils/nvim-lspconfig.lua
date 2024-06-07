--- [INFO: Allow Vue volar to attach properly]
return {
  "neovim/nvim-lspconfig",
  version = "*",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      -- volar = {
      --   filetypes = {
      --     "typescript",
      --     "javascript",
      --     "vue",
      --   },
      --   root_dir = util.root_pattern("src/App.vue", "app.vue"),
      -- },
      lua_ls = {
        settings = {
          Lua = {
            hint = { enable = true },
          },
        },
      },
      tsserver = {
        settings = {
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- false
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayVariableTypeHintsWhenTypeMatchesName = true, -- false
            },
          },
          javascript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayVariableTypeHintsWhenTypeMatchesName = true,
            },
          },
        },
      },
    },
  },
}
