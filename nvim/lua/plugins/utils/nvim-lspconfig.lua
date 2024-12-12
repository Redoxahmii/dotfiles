--- [INFO: Allow Vue volar to attach properly]
return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              hint = { enable = true },
            },
          },
        },
        -- vtsls = {
        --   settings = {
        --     implicitProjectConfiguration = {
        --       checkJs = true,
        --     },
        --   },
        -- },
      },
    },
  },
}
