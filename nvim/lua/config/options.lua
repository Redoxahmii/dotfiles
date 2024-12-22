require("redox.nice").set_shada()
vim.opt.scrolloff = 10
vim.opt.showmode = false
vim.g.leader = " "
vim.opt.diffopt = "vertical"
vim.opt.wildignore:append({ "*/node_modules/*" })
-- vim.g.lazyvim_prettier_needs_config = false
-- vim.opt.cursorline = false
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", eol = "↲" }

-- INFO: project-specific global marks

-- local function get_buffer_name()
--   local buffer_path = vim.api.nvim_buf_get_name(0)
--
--   if buffer_path == "" or buffer_path == "." then
--     return "Directory" -- Fallback name for the directory buffer
--   end
--   local is_directory = vim.fn.isdirectory(buffer_path) == 1
--   if is_directory then
--     return "Directory"
--   end
--   return vim.fn.fnamemodify(buffer_path, ":t")
-- end
--
-- local last_update_time = 0
-- local debounce_time = 1 -- in seconds
--
-- local function update_status(buffer, status)
--   -- Send the request without printing to console
--   vim.fn.system({
--     "curl",
--     "-X",
--     "POST",
--     "",
--     "-H",
--     "Content-Type: application/json",
--     "-d",
--     string.format('{"buffer": "%s", "status": "%s"}', buffer, status),
--   })
-- end
--
-- local function update_status_debounced(buffer, status)
--   local current_time = vim.fn.localtime()
--
--   if current_time - last_update_time > debounce_time then
--     update_status(buffer, status)
--     last_update_time = current_time
--   end
-- end
--
-- -- Trigger status update when the file is saved
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = "*",
--   callback = function()
--     local buffer_name = get_buffer_name()
--     update_status_debounced(buffer_name, "working")
--   end,
-- })
--
-- -- Trigger status update just before quitting Neovim (synchronous update)
-- vim.api.nvim_create_autocmd("VimLeave", {
--   callback = function()
--     local buf = "Chilling"
--     update_status(buf, "idle")
--   end,
-- })
