return {
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      use_default_keymaps = false,
      notify = false,
    },
    keys = {
      {
        "<leader>j",
        "<CMD>TSJToggle<CR>",
        desc = "Toggle Join/Split",
      },
    },
  },
}
