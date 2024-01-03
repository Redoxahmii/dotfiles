return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  priority = 1000,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
    "3rd/image.nvim",
    -- see below for full list of optional dependencies 👇
  },
  opts = {
    templates = {
      subdir = "Templates",
    },
    daily_notes = {
      folder = "Daily",
    },
    attachments = {
      img_folder = "Images",
    },
    follow_url_func = function(url)
      print("Opening URL: " .. url)
      vim.fn.jobstart({ "xdg-open", url }) -- linux
    end,
    workspaces = {
      {
        name = "personal",
        path = "~/Code/Obsidian/",
      },
    },

    -- see below for full list of options 👇
  },
}
