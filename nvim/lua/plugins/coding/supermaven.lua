--- [INFO: Supermaven autocomplete]
return {
  {
    "supermaven-inc/supermaven-nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        accept_suggestion = "<tab>",
        clear_suggestion = "<A-c>",
        accept_word = "<A-w>",
      },
      log_level = "off",
    },
  },
}
