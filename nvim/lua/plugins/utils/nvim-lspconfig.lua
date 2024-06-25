--- [INFO: Allow Vue volar to attach properly]
return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    opts = {
      inlay_hints = { enabled = false },
      -- servers = {
      --   lua_ls = {
      --     settings = {
      --       Lua = {
      --         hint = { enable = true },
      --       },
      --     },
      --   },
      --   vtsls = {
      --     settings = {
      --       typescript = {
      --         inlayHints = {
      --           includeInlayEnumMemberValueHints = true,
      --           includeInlayFunctionLikeReturnTypeHints = true,
      --           includeInlayFunctionParameterTypeHints = true,
      --           includeInlayParameterNameHints = "all",
      --           includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- false
      --           includeInlayPropertyDeclarationTypeHints = true,
      --           includeInlayVariableTypeHints = true,
      --           includeInlayVariableTypeHintsWhenTypeMatchesName = true, -- false
      --         },
      --       },
      --       javascript = {
      --         inlayHints = {
      --           includeInlayEnumMemberValueHints = true,
      --           includeInlayFunctionLikeReturnTypeHints = true,
      --           includeInlayFunctionParameterTypeHints = true,
      --           includeInlayParameterNameHints = "all",
      --           includeInlayParameterNameHintsWhenArgumentMatchesName = true,
      --           includeInlayPropertyDeclarationTypeHints = true,
      --           includeInlayVariableTypeHints = true,
      --           includeInlayVariableTypeHintsWhenTypeMatchesName = true,
      --         },
      --       },
      --     },
      --   },
      -- },
    },
  },
}
