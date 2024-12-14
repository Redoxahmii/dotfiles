return {
  {
    "kawre/leetcode.nvim",
    lazy = true,
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
