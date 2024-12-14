-- INFO:LazyVim pains
return {
  {
    "which-key.nvim",
    opts = {
      preset = "classic",
    },
  },
  -- INFO: change style to nvim-cmp
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          draw = {
            columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
          },
        },
      },
    },
  },
}
