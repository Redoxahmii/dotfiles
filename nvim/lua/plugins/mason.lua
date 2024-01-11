return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
  build = ":MasonUpdate",
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",
      "typescript-language-server",
      "tailwindcss-language-server",
      "emmet-language-server",
      "eslint-lsp",
    },
  },
}
