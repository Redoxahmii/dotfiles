return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function(_, opts)
    local logo = [[
██████╗ ███████╗██████╗  ██████╗ ██╗  ██╗
██╔══██╗██╔════╝██╔══██╗██╔═══██╗╚██╗██╔╝
██████╔╝█████╗  ██║  ██║██║   ██║ ╚███╔╝ 
██╔══██╗██╔══╝  ██║  ██║██║   ██║ ██╔██╗ 
██║  ██║███████╗██████╔╝╚██████╔╝██╔╝ ██╗
╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
                                         
    ]]
    logo = string.rep("\n", 7) .. logo .. "\n\n"
    opts.config.header = vim.split(logo, "\n")
  end,
}
