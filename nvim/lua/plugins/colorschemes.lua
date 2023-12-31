return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
      },
    },
  },
  {
    "catppuccin",
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
        terminal_color = false,
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
      colorscheme = "astrotheme",
    },
  },
}
