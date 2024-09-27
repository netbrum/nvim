return {
  {
    enabled = false,
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
  {
    "yorumicolors/yorumi.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme yorumi")
    end,
  },
}
