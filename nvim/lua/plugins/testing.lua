return {
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>sm", false },
    },
  },
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
  {
    -- Neovim plugin to automatic change normal string to template string
    -- in JS like languages
    -- https://github.com/axelvc/template-string.nvim
    "axelvc/template-string.nvim",
    config = true,
  },
}
