return {
  "nvim-telescope/telescope.nvim",
  version = false,
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- stylua: ignore
  keys = {
    { "<leader>k", "<cmd>Telescope find_files<cr>", mode = "n" },
  },
}
