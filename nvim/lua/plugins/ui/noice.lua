--- [INFO: Disable K hover command prompt]
return {
  "noice.nvim",
  opts = function(_, opts)
    opts.presets.lsp_doc_border = true
    table.insert(opts.routes, {
      filter = {
        event = "notify",
        find = "No information available",
      },
      opts = { skip = true },
    })
  end,
}
