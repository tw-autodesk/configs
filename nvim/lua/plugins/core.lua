local util = require("tokyonight.util")

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.style = "night"

      ---@class colors
      opts.on_colors = function(colors)
        colors.fg_gutter = util.lighten(colors.bg, 0.68)
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
