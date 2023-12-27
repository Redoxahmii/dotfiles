return {
  {
    "neovim/nvim-lspconfig",
    opts = {
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
