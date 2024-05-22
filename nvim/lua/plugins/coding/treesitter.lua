--- [INFO: Treesitter markdown mdx enabler]
return {
  "nvim-treesitter/nvim-treesitter",
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    vim.treesitter.language.register("markdown", "mdx")
    vim.filetype.add({
      extension = {
        mdx = "markdown",
      },
    })
  end,
  opts = {
    ensure_installed = {
      "javascript",
      "typescript",
      "tsx",
      "css",
      "gitignore",
      "http",
      "json",
      "vim",
      "lua",
    },
  },
}
