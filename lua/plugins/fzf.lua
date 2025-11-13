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
  opts = {
    keymap = {
      fzf = {
        ["ctrl-q"] = "select-all+accept",
      },
    },
  },
  config = function(_, opts)
    require("fzf-lua").setup(opts)
  end,
}
