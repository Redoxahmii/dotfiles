return {
  -- {
  --   dir = "~/Code/Neovim/json-to-types.nvim/",
  --   branch = "master",
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
  --
  -- {
  --   "jesseleite/nvim-macroni",
  --   opts = {},
  -- },
  {

    "supermaven-inc/supermaven-nvim",
    opts = {
      keymaps = {
        accept_suggestion = "<tab>",
        clear_suggestion = "<A-c>",
        accept_word = "<A-w>",
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    keys = {
      { "<tab>", false, mode = { "i", "s" } },
      { "<s-tab>", false, mode = { "i", "s" } },
    },
  },
}
