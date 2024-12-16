return {
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {
      highlighters = {
        hsl_color = {
          pattern = "hsl%(%d+%.?%d*,? %d+%.?%d*%%?,? %d+%.?%d*%%?%)",
          group = function(_, match)
            local utils = require("redox.hsl")
            --- @type string, string, string
            local nh, ns, nl = match:match("hsl%((%d+%.?%d*),? (%d+%.?%d*)%%?,? (%d+%.?%d*)%%?%)")
            --- @type number?, number?, number?
            local h, s, l = tonumber(nh), tonumber(ns), tonumber(nl)
            --- @type string
            local hex_color = utils.hslToHex(h, s, l)
            return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
          end,
        },
        shadcn_color = {
          pattern = "%-%-[%a-]+%d*:%s*%d+%.?%d*%%?%s+%d+%.?%d*%%?%s+%d+%.?%d*%%?;",
          group = function(_, match)
            local utils = require("redox.hsl")
            --- @type string, string, string
            local nh, ns, nl = match:match("%-%-[%a-]+%d*:%s*(%d+%.?%d*)%%?%s+(%d+%.?%d*)%%?%s+(%d+%.?%d*)%%?;")
            --- @type number?, number?, number?
            local h, s, l = tonumber(nh), tonumber(ns), tonumber(nl)
            --- @type string
            local hex_color = utils.hslToHex(h, s, l)
            return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
          end,
          -- extmark_opts = function(_, _, data)
          --   return {
          --     virt_text = { { "⬤ ", data.hl_group } },
          --     virt_text_pos = "inline",
          --     priority = 2000,
          --   }
          -- end,
        },
      },
    },
  },
}
