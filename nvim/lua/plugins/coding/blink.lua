return {
  {
    "saghen/blink.cmp",
    --@module 'blink.cmp'
    --@type blink.cmp.Config
    opts = {
      fuzzy = {
        sorts = { "kind", "label", "score" },
      },
      completion = {
        menu = {
          -- scrollbar = true,
          draw = {
            treesitter = false,
            columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
          },
        },
        list = {
          selection = "preselect",
        },
        trigger = {
          prefetch_on_insert = true,
          show_on_trigger_character = false,
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 0,
          update_delay_ms = 0,
        },
      },
      appearance = {
        use_nvim_cmp_as_default = false,
      },
    },
  },
}
