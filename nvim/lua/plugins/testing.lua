return {
  -- {
  --   dir = "~/Code/Neovim/json-to-ts.nvim/",
  --   build = "sh install.sh npm",
  --   keys = {
  --     {
  --       "<leader>cu",
  --       "<CMD>ConvertJSONtoTS<CR>",
  --       desc = "Convert JSON to TS",
  --     },
  --     {
  --       "<leader>ct",
  --       "<CMD>ConvertJSONtoTSBuffer<CR>",
  --       desc = "Convert JSON to TS Buffer",
  --     },
  --   },
  -- },
  {
    "Redoxahmii/json-to-ts.nvim",
    build = "sh install.sh npm",
    keys = {
      {
        "<leader>cu",
        "<CMD>ConvertJSONtoTS<CR>",
        desc = "Convert JSON to TS",
      },
      {
        "<leader>ct",
        "<CMD>ConvertJSONtoTSBuffer<CR>",
        desc = "Convert JSON to TS Buffer",
      },
    },
  },
  -- {
  --   "nvim-telescope/telescope-file-browser.nvim",
  --   dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  -- },
  --
}
