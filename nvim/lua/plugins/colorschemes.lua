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
    opts = function()
      return {
        transparent = true,
      }
    end,
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
  {
    "AstroNvim/astrotheme",
    lazy = true,
    config = function()
      require("astrotheme").setup({
        -- style = {
        --   transparent = true,
        --   neotree = true,
        -- },
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
