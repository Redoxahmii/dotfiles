return {
  -- {
  --   dir = "~/Code/Neovim/json-to-ts.nvim/",
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
  {
    "Redoxahmii/json-to-ts.nvim",
    build = "sh install.sh npm",
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
  -- {
  --   "nvim-telescope/telescope-file-browser.nvim",
  --   dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  -- },
  --

  --   "barrett-ruth/import-cost.nvim",
  -- {
  --   build = "sh install.sh npm",
  --   -- if on windows
  --   -- build = 'pwsh install.ps1 yarn',
  --   config = true,
  -- },
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
}
