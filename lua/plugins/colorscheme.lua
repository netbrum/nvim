return {
  "folke/tokyonight.nvim",
  priority = 1000,
  opts = {
    style = "moon",
    sidebars = { "qf", "help", "toggleterm" },
  },
  config = function(_, opts)
    require("tokyonight").load(opts)
  end,
}
