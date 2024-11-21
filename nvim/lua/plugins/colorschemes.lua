return {
  --- [INFO: Add tokyonight with transparent sidebars and floats]
  {
    "folke/tokyonight.nvim",
    lazy = true,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("tokyonight").setup({
        transparent = true,
        style = "night",
        styles = {
          sidebars = "transparent",
          -- floats = "transparent",
        },
        on_highlights = function(hl, c)
          hl.LineNrAbove = { fg = c.dark5 }
          hl.LineNrBelow = { fg = c.dark5 }
        end,
      })
    end,
  },
  {
    "catppuccin",
    opts = {
      flavour = "frappe",
      transparent_background = true,
    },
  },

  --- [INFO: Add rainbow markdown colors to solarized-osaka]
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
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
          hl.CursorLineNr = { fg = c.orange700 }

          hl.LineNrAbove = { fg = c.orange500 }
          hl.LineNrBelow = { fg = c.orange500 }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
