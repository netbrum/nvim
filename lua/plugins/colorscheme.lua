return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      sidebars = { "qf", "help", "toggleterm" },
    },
    config = function(_, opts)
      require("tokyonight").load(opts)
    end,
  },
}
