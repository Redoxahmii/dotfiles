return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
      },
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
      },
    },
  },
  {
    "catppuccin",
    lazy = true,
    -- opts = {
    --   transparent_background = true,
    -- },
  },
  -- {
  --   "nobbmaestro/nvim-andromeda",
  --   dependencies = {
  --     { "tjdevries/colorbuddy.nvim", branch = "dev" },
  --   },
  --   config = function()
  --     require("andromeda").setup()
  --   end,
  -- },
  { "EdenEast/nightfox.nvim" },
  {
    "Tsuzat/NeoSolarized.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
