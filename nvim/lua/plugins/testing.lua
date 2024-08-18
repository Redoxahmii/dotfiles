return {
  -- {
  --   dir = "~/Code/Neovim/json-to-types.nvim/",
  --   lazy = false,
  --   build = "sh install.sh npm",
  --   keys = {
  --     {
  --       "<leader>cU",
  --       "<CMD>ConvertJSONtoLang c++<CR>",
  --       desc = "Convert JSON to TS",
  --     },
  --     {
  --       "<leader>ct",
  --       "<CMD>ConvertJSONtoLangBuffer typescript<CR>",
  --       desc = "Convert JSON to TS Buffer",
  --     },
  --   },
  -- },
  {
    "thePrimeagen/vim-be-good",
    cmd = "VimBeGood",
    config = function()
      require("VimBeGood").setup({})
    end,
  },
}
