return {
  {
    "danymat/neogen",
    config = true,
    cmd = "Neogen",
    keys = {
      {
        "<leader>cn",
        function()
          require("neogen").generate({
            type = "func",
          })
        end,
        desc = "Generate Annotations (Neogen)",
      },
    },
  },
}
