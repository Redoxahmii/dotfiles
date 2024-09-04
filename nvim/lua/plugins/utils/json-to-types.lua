return {
  {
    "Redoxahmii/json-to-types.nvim",
    build = "sh install.sh npm",
    ft = "json",
    -- INFO: Turn this on to use local version
    -- dev = true,
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
      -- {
      --   "<leader>Rw",
      --   require("kulala.api").on("after_request", function(data)
      --     local filename = "kulala.json"
      --     local file = io.open(filename, "w")
      --     if not file then
      --       print("Error: Failed to open file for writing")
      --       return
      --     end
      --     file:write(data.body)
      --     file:close()
      --     vim.cmd("edit " .. filename)
      --     local buf = vim.api.nvim_get_current_buf()
      --     vim.cmd("ConvertJSONtoLangBuffer python")
      --     vim.api.nvim_buf_delete(buf, { force = true })
      --     os.remove(filename)
      --   end),
      --   desc = "Convert JSON to TS Buffer",
      -- },
    },
  },
}
