return {
  {
    "thePrimeagen/vim-be-good",
    cmd = "VimBeGood",
    config = function()
      require("VimBeGood").setup({})
    end,
  },
  -- {
  --   "barreiroleo/ltex_extra.nvim",
  --   ft = { "markdown", "tex" },
  --   dependencies = { "neovim/nvim-lspconfig" },
  --   -- yes, you can use the opts field, just I'm showing the setup explicitly
  --   config = function()
  --     require("ltex_extra").setup({
  --       path = "~/git-pkg/dotfiles/nvim/spell/",
  --       server_opts = {
  --         on_attach = function()
  --           -- your on_attach process
  --         end,
  --         settings = {
  --           ltex = {
  --             checkFrequency = 1000,
  --           },
  --         },
  --       },
  --     })
  --   end,
  -- },
}
