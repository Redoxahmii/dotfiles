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
  {
    "kawre/leetcode.nvim",
    dev = false,
    branch = "dev",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      arg = "leet",
      lang = "javascript",
      logging = false,
    },
  },
}
