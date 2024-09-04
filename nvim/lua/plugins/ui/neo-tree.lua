--- [INFO: Decrease the width of neo tree]
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.cmd([[
          setlocal relativenumber
        ]])
        end,
      },
    },
    window = {
      width = 28,
    },
    default_component_configs = {
      indent = {
        indent_size = 2,
        padding = 0,
      },
    },
  },
  keys = {
    -- {
    --   "<Leader>B",
    --   function()
    --     local function buffer_dir()
    --       return vim.fn.expand("%:p:h")
    --     end
    --     require("neo-tree.command").execute({ toggle = true, dir = buffer_dir() })
    --   end,
    --   desc = "Toggle neo-tree for current buffer",
    -- },
  },
}
