return {
  -- {
  --   dir = "~/Code/Neovim/json-to-types.nvim/",
  --   build = "sh install.sh npm",
  --   keys = {
  --     {
  --       "<leader>cu",
  --       "<CMD>ConvertJSONtoLang c++<CR>",
  --       desc = "Convert JSON to TS",
  --     },
  --     {
  --       "<leader>ct",
  --       function()
  --         require("json-to-types").convertTypesBuffer("c++")
  --       end,
  --       desc = "Convert JSON to TS Buffer",
  --     },
  --   },
  -- },
  {
    "fzf-lua",
    opts = {
      lsp = {
        code_actions = LazyVim.opts("nvim-lspconfig").servers.vtsls and {
          previewer = false,
        } or {
          previewer = vim.fn.executable("delta") == 1 and "codeaction_native" or nil,
        },
      },
    },
  },
}
