--- [INFO: Obsidian Notes]
return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  cmd = "ObsidianQuickSwitch",
  ft = "markdown",
  keys = {
    { "<leader>wW", mode = "n", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian Notes" },
  },

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
      debug = true,
      folder = "~/Code/Obsidian/Templates",
    },
    daily_notes = {
      folder = "Daily",
      template = "/Daily Notes.md",
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
  },
}
