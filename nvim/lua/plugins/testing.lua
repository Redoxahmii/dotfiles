return {
  {
    "davidmh/mdx.nvim",
    event = "BufRead",
    config = true,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>sm", false },
    },
  },
}
