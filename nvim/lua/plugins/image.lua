package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
return {
  "3rd/image.nvim",
  opts = function()
    require("image").setup({
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = true,
          filetypes = { "markdown", "mdx" },
          only_render_image_at_cursor = true,
          download_remote_images = true,
        },
      },
    })
  end,
}
