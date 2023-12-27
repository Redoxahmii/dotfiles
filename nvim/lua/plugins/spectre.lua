return {
  "nvim-pack/nvim-spectre",
  keys = {
    {
      "<leader>sR",
      function()
        require("spectre").open_file_search({ select_word = true })
      end,
      desc = "Replace in single File (Spectre)",
    },
  },
}
