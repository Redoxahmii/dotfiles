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
    dir = "~/Code/Neovim/solarized-osaka.nvim/",
    opts = {
      transparent = true,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
    },
  },
  {
    "folke/flash.nvim",
    opts = {
      highlight = {
        groups = {
          match = "FlashCurrent",
          label = "FlashMatch",
        },
      },
    },
  },
}
