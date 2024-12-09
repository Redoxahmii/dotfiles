return {
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>sm", false },
    },
  },
  {
    "kawre/leetcode.nvim",
    branch = "dev",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-lua/plenary.nvim",
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
