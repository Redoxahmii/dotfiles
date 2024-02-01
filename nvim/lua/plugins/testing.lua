return {
  -- {
  --   dir = "~/Code/Neovim/json-to-ts.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  {
    dir = "~/Code/Neovim/json-to-ts.nvim/",
    lazy = false,
    priority = 1000,
    opts = {},
    keys = {
      {
        "<leader>ct",
        function()
          require("json-to-ts").hello()
        end,
        desc = "test2",
      },
    },
  },
}
