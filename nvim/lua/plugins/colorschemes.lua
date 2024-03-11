return {
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
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   config = function()
  --     require("solarized-osaka").setup({
  --       styles = {
  --         sidebars = "transparent",
  --         floats = "transparent",
  --       },
  --       on_highlights = function(hl, c)
  --         local keywordColor = "#768900"
  --         hl["@tag.tsx"] = { fg = c.orange500 }
  --         hl["@tag.javascript"] = { fg = c.orange500 }
  --         hl["@keyword.return.tsx"] = { fg = keywordColor, style = "italic" }
  --         hl["@keyword.javascript"] = { fg = keywordColor, style = "italic" }
  --         hl["@keyword.return.javascript"] = { fg = keywordColor, style = "italic" }
  --         hl["@tag.delimiter.javascript"] = { fg = c.red500 }
  --         hl["@keyword.tsx"] = { fg = keywordColor, style = "italic" }
  --       end,
  --     })
  --   end,
  -- },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   opts = {
  --     styles = {
  --       floats = "transparent",
  --       sidebars = "transparent",
  --     },
  --   },
  -- },
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
