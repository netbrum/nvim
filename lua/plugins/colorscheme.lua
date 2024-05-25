return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "moon",
  },
  config = function(_, opts)
    require("tokyonight").load(opts)
  end,
}
