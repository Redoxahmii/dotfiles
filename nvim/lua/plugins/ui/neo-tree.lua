--- [INFO: Decrease the width of neo tree]
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 26,
    },
  },
  keys = {
    {
      "<Leader>B",
      function()
        local function buffer_dir()
          return vim.fn.expand("%:p:h")
        end
        require("neo-tree.command").execute({ toggle = true, dir = buffer_dir() })
      end,
      desc = "Toggle neo-tree for current buffer",
    },
  },
}
