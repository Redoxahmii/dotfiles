return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        volar = {
          filetypes = {
            -- "typescript",
            "vue",
          },
        },
      },
    },
  },
}
