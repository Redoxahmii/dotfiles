return {
  ---@type snacks.config
  {
    -- TODO: format proper
    "snacks.nvim",
    opts = {
      -- scratch = {
      --   ---@type table<string, snacks.win.Config>
      --   win_by_ft = {
      --     javascript = {
      --       keys = {
      --         ["source"] = {
      --           "<cr>",
      --           function(self)
      --             local name = "scratch." .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(self.buf), ":e")
      --             local output = vim.cmd("node" .. name)
      --       Snacks.debug.run({ buf = self.buf, name = name })
      --           end,
      --         },
      --       },
      --     },
      --   },
      -- },
      dashboard = {
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            -- { icon = "󱞁 ", key = "d", desc = "Daily todo", action = ":e ~/Code/Obsidian/daily.md" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󱞁 ", key = "w", desc = "Obsidian Notes", action = ":ObsidianQuickSwitch" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },

          header = [[
    ██████╗ ███████╗██████╗  ██████╗ ██╗  ██╗
    ██╔══██╗██╔════╝██╔══██╗██╔═══██╗╚██╗██╔╝
  ██████╔╝█████╗  ██║  ██║██║   ██║ ╚███╔╝
  ██╔══██╗██╔══╝  ██║  ██║██║   ██║ ██╔██╗
    ██║  ██║███████╗██████╔╝╚██████╔╝██╔╝ ██╗
    ╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
          ]],
        },
        sections = {
          { section = "header", padding = 1, align = "center" },
          -- {
          --   pane = 2,
          --   icon = " ",
          --   title = "Todos",
          --   section = "terminal",
          --   indent = 2,
          --   height = 10,
          --   cmd = 'bat --plain --theme "Solarized (dark)" ~/Code/Obsidian/daily.md',
          --   padding = 3,
          -- },
          { icon = " ", title = "Recent Files", section = "recent_files", limit = 4, padding = 1 },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
          -- { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        },
      },
    },
  },
  --
  -- {
  --   "snacks.nvim",
  --
  --   lazy = false,
  --   opts = {
  --     dashboard = {
  --       preset = {
  --         header = [[
  --
  --   ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▒    ▒▓▓▓▓▒        ▒▓▓▓▓▒
  --   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒    ▒▓▓▓▓▓       ▒▓▓▓▓▒
  --  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▓▓▓▓▓▓▒▒▒▒▒▓▓▓▓▓▒
  --                        ▓▓▓▓▓▓▓▓▓▓▓▓▓▒
  --                          ▒▒▒▒▒▒▒▒
  --   ▒▒▒▒▒▒
  --  ▓▓▓▓▓▓▓
  --  ▓▓▓▓▓▓▓▒               ▒▒▒▒▒▒▒
  --  ▒▓▓▓▓▓▓▓▒            ▒▓▓▓▓▓▓▓▒
  --   ▒▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▒
  --    ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒
  --      ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒
  --                          ]],
  --       },
  --       formats = {
  --         header = {
  --           align = "center",
  --         },
  --       },
  --       sections = {
  --         {
  --           section = "header",
  --           padding = 4,
  --         },
  --         {
  --           pane = 2,
  --           {
  --             { section = "keys", gap = 1, padding = 2 },
  --             { section = "startup" },
  --           },
  --         },
  --       },
  --     },
  --   },
  --   init = function()
  --     vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#ffffff" })
  --   end,
  -- },
}
