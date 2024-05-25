return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "moon",
    sidebars = { "qf", "help", "toggleterm" },
  },
  config = function(_, opts)
    require("tokyonight").load(opts)
  end,
}
