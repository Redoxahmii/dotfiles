return {
  -- {
  --   dir = "~/Code/Neovim/json-to-types.nvim/",
  --   branch = "master",
  --   build = "sh install.sh npm",
  --   keys = {
  --     {
  --       "<leader>cu",
  --       "<CMD>ConvertJSONtoTS<CR>",
  --       desc = "Convert JSON to TS",
  --     },
  --     {
  --       "<leader>ct",
  --       "<CMD>ConvertJSONtoTSBuffer<CR>",
  --       desc = "Convert JSON to TS Buffer",
  --     },
  --   },
  -- },
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   opts = {
  --     jsx_close_tag = {
  --       enable = true,
  --       filetypes = { "javascriptreact", "typescriptreact" },
  --     },
  --   },
  -- },
  {
    "barrett-ruth/live-server.nvim",
    build = "npm i -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = function()
      require("live-server").setup({
        args = { "--port=8000" },
      })
    end,
  },
}
