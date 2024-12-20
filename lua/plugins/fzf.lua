return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>,",
      "<cmd>FzfLua files<cr>",
      desc = "Find files",
    },
    {
      "<leader>/",
      "<cmd>FzfLua live_grep<cr>",
      desc = "Grep",
    },
  },
  config = function()
    require("fzf-lua").setup({})
  end,
}
