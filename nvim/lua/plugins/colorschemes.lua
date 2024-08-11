return {
  --- [INFO: Add tokyonight with transparent sidebars and floats]
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "catppuccin",
    opts = {
      flavour = "frappe",
      transparent_background = true,
    },
  },
  -- {
  --   "EdenEast/nightfox.nvim",
  --   opts = {
  --     options = {
  --       transparent = true,
  --       inverse = {
  --         visual = true,
  --         match_paren = true,
  --         search = true,
  --       },
  --     },
  --   },
  -- }, -- lazy
  --- [INFO: Add rainbow markdown colors to solarized-osaka]
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    config = function()
      require("solarized-osaka").setup({
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
        on_highlights = function(hl, c)
          local util = require("solarized-osaka.util")
          local markdown_rainbow = { c.blue, c.yellow, c.green, c.red, c.magenta, c.cyan }
          for i, color in ipairs(markdown_rainbow) do
            hl["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
            hl["Headline" .. i] = { bg = util.darken(color, 0.05) }
            hl["keyword.tsx"] = { fg = util.darken(c.green500, 0.85) }
            hl["keyword.return.tsx"] = { fg = util.darken(c.green500, 0.85) }
            hl["keyword.javascript"] = { fg = util.darken(c.green500, 0.85) }
            hl["keyword.return.javascript"] = { fg = util.darken(c.green500, 0.85) }
          end
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
