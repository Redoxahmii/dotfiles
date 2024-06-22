return {
  {
    "Redoxahmii/json-to-types.nvim",
    build = "sh install.sh npm",
    keys = {
      {
        "<leader>cu",
        "<CMD>ConvertJSONtoLang typescript<CR>",
        desc = "Convert JSON to TS",
      },
      {
        "<leader>ct",
        "<CMD>ConvertJSONtoLangBuffer typescript<CR>",
        desc = "Convert JSON to TS Buffer",
      },
    },
  },
}
