--- [INFO: Enable command mode suggestions]
return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdLineEnter" },
  dependencies = {
    "hrsh7th/cmp-cmdline",
  },
  opts = function(_)
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
  keys = {
    { "<tab>", false, mode = { "i", "s" } },
    { "<s-tab>", false, mode = { "i", "s" } },
    -- {
    --   "<C-k>",
    --   function()
    --     return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
    --   end,
    --   expr = true,
    --   silent = true,
    --   mode = { "i", "s" },
    -- },
    -- {
    --   "<C-j>",
    --   function()
    --     return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<Tab>"
    --   end,
    --   expr = true,
    --   silent = true,
    --   mode = { "i", "s" },
    -- },
  },
}
