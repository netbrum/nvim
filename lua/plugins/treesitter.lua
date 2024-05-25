return {
  "nvim-treesitter/nvim-treesitter",
  event = { "LazyFile", "VeryLazy" },
  build = ":TSUpdate",
  opts = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    ensure_installed = {
      "lua",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
