package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
return {
  "3rd/image.nvim",
  opts = function()
    require("image").setup({})
  end,
  rocks = { "magick" },
}
