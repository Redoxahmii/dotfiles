return {
  {
    -- TODO: format proper
    "snacks.nvim",
    opts = {
      indent = {
        scope = {
          treesitter = {
            enabled = false,
          },
        },
      },
      scroll = {
        enabled = false,
      },
      dashboard = {
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
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
}
