return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    -- opts = {
    --   transparent = true,
    --   styles = {
    --     sidebars = "transparent",
    --   },
    -- },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    config = function()
      require("solarized-osaka").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
        },
      })
    end,
  },
  {
    "catppuccin",
    lazy = true,
    opts = {
      transparent_background = true,
    },
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
  {
    "AstroNvim/astrotheme",
    lazy = true,
    config = function()
      require("astrotheme").setup({
        style = {
          transparent = true,
          neotree = false,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- INFO: Just change name of colorscheme to make any other default
      colorscheme = "tokyonight-night",
    },
  },
}
