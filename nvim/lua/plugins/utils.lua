local util = require("lspconfig.util")
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

return {
  -- - [INFO: Enable command mode suggestions]
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdLineEnter" },
    dependencies = {
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-emoji",
    },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
      local cmp = require("cmp")
      -- `:` cmdline setup.
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
      cmp.setup({
        sources = {
          name = "nvim_lsp",
          max_item_count = 10,
        },
      })
    end,
  },
  --- [INFO: Comment with <leader>cc]
  {
    "danymat/neogen",
    keys = {
      {
        "<leader>cc",
        function()
          require("neogen").generate({})
        end,
        desc = "Neogen Comment",
      },
    },
    opts = { snippet_engine = "luasnip" },
  },

  --- [INFO: Allow Vue volar to attach properly]
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          filetypes = {
            "typescript",
            "javascript",
            "vue",
          },
          root_dir = util.root_pattern("src/App.vue"),
        },
      },
    },
  },
  --- [INFO: Image preview]
  {
    "3rd/image.nvim",
    lazy = true,
    keys = { { "<leader>uI", mode = "n", desc = "Enable Images" } },
    opts = function()
      require("image").setup({
        backend = "kitty",
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = true,
            filetypes = { "markdown", "mdx" },
            only_render_image_at_cursor = true,
            download_remote_images = true,
          },
        },
      })
    end,
  },
  --- [INFO: kitty-scrollback]
  {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = true,
    lazy = true,
    cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
    event = { "User KittyScrollbackLaunch" },
    -- version = "*", -- latest stable version, may have breaking changes if major version changed
    version = "^3.0.0", -- pin major version, include fixes and features that do not have breaking changes
    config = function()
      require("kitty-scrollback").setup({})
    end,
  },
  --- [INFO: Obsidian Notes]
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    cmd = "ObsidianQuickSwitch",

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
    },
  },

  --- [INFO: Disable copilot for markdown]
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   build = ":Copilot auth",
  --   opts = {
  --     suggestion = { enabled = false },
  --     panel = { enabled = false },
  --     filetypes = {
  --       markdown = false,
  --       help = true,
  --       lua = false,
  --     },
  --   },
  -- },
  {
    "andrewferrier/debugprint.nvim",
    opts = {},
    -- Dependency only needed for NeoVim 0.8
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    -- Remove the following line to use development versions,
    -- not just the formal releases
    version = "*",
  },
}
