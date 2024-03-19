local util = require("lspconfig.util")
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

return {
  --- [INFO: Enable command mode suggestions]
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
  --- [INFO: Comment with <leader>cw]
  {
    "danymat/neogen",
    keys = {
      {
        "<leader>cw",
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
    -- inlay_hints = { enabled = true },
    opts = {
      servers = {
        volar = {
          filetypes = {
            "typescript",
            "javascript",
            "vue",
          },
          root_dir = util.root_pattern("src/App.vue", "app.vue"),
        },
        lua_ls = {
          settings = {
            Lua = {
              hint = { enable = true },
            },
          },
        },
        tsserver = {
          settings = {
            typescript = {
              inlayHints = {
                -- taken from https://github.com/typescript-language-server/typescript-language-server#workspacedidchangeconfiguration
                includeInlayEnumMemberValueHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- false
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = true, -- false
              },
            },
            javascript = {
              inlayHints = {
                includeInlayEnumMemberValueHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = true,
              },
            },
          },
        },
      },
    },
  },
  --- [INFO: Image preview]
  {
    "3rd/image.nvim",
    lazy = true,
    keys = {
      {
        "<leader>uI",
        function()
          vim.notify("Image Preview Enabled!")
        end,
        mode = "n",
        desc = "Enable Images",
      },
    },
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
        subdir = "Templates",
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
  --
  --- [INFO: disable bigfile things]
  {
    "LunarVim/bigfile.nvim",
    event = "BufRead",
    lazy = true,
    opts = {},
  },

  --- [INFO: vim-tmux navigation]
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", desc = "Go to the previous pane" },
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Got to the left pane" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Got to the down pane" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Got to the up pane" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Got to the right pane" },
    },
  },

  --- [INFO: undotree]
  {
    "mbbill/undotree",
    lazy = true,
    cmd = "UndotreeToggle",
    keys = {
      {
        "<leader>uu",
        "<CMD>UndotreeToggle<CR>",
        desc = "Undo Tree",
      },
    },
  },
  --INFO: use this command for .http file
  --set ft=http
  {
    "rest-nvim/rest.nvim",
    lazy = true,
    ft = "http",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("rest-nvim").setup({
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- stay in current windows (.http file) or change to results window (default)
        stay_in_current_window_after_split = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          -- show the generated curl command in case you want to launch
          -- the same request via the terminal (can be verbose)
          show_curl_command = false,
          show_http_info = true,
          show_headers = true,
          -- table of curl `--write-out` variables or false if disabled
          -- for more granular control see Statistics Spec
          show_statistics = false,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
            end,
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = ".env",
        custom_dynamic_variables = {},
        yank_dry_run = true,
        search_back = true,
      })
    end,
    keys = {
      {
        "<leader>wr",
        "<Plug>RestNvim",
        desc = "Test the current file",
      },
    },
  },
  --- [INFO: JSON to TS]
  {
    "Redoxahmii/json-to-ts.nvim",
    build = "sh install.sh npm",
    lazy = true,
    ft = "json",
    keys = {
      {
        "<leader>cu",
        "<CMD>ConvertJSONtoTS<CR>",
        desc = "Convert JSON to TS",
      },
      {
        "<leader>ct",
        "<CMD>ConvertJSONtoTSBuffer<CR>",
        desc = "Convert JSON to TS Buffer",
      },
    },
  },

  --- [INFO: Wakatime dashboard plugin]
  { "wakatime/vim-wakatime", lazy = false },
}
