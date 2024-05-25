--- [INFO: Enable command mode suggestions]
return {
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
  keys = {
    { "<tab>", false, mode = { "i", "s" } },
    { "<s-tab>", false, mode = { "i", "s" } },
  },
}
