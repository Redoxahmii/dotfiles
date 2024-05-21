--- [INFO: Comment with <leader>cw]
return {
  "danymat/neogen",
  keys = {
    {
      "<leader>cw",
      function()
        require("neogen").generate({})
      end,
      desc = "Neogen Comment",
    },
  },
  opts = { snippet_engine = "luasnip" },
}
