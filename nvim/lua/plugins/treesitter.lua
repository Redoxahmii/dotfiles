return {
  {
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
  },
}
