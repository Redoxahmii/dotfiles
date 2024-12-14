vim.opt.scrolloff = 10
vim.g.leader = " "
vim.opt.diffopt = "vertical"
vim.opt.wildignore:append({ "*/node_modules/*" })
-- vim.g.lazyvim_prettier_needs_config = false
-- vim.opt.cursorline = false
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", eol = "↲" }
-- INFO: project-specific global marks
local project_dir = vim.fn.stdpath("data") .. "/myshada/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
if vim.fn.isdirectory(project_dir) == 0 then
  vim.fn.mkdir(project_dir, "p")
end
local shadafile = project_dir .. "/" .. vim.fn.sha256(vim.fn.getcwd()):sub(1, 8) .. ".shada"
vim.opt.shadafile = shadafile
