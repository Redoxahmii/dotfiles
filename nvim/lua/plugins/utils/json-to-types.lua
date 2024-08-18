return {
  {
    "Redoxahmii/json-to-types.nvim",
    build = "sh install.sh npm",
    lazy = false,
    keys = {
      {
        "<leader>cU",
        "<CMD>ConvertJSONtoLang go<CR>",
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
