return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- stylua: ignore
  keys = {
    {  "<leader>j", "<cmd>Oil<cr>", desc = "Open parent directory", mode = { "n" } }
  },
  opts = {
    default_file_explorer = true,
  },
}
