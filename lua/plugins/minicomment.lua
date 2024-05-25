return {
  "echasnovski/mini.comment",
  version = "*",
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      lazy = true,
      opts = {
        enable_autocmd = false,
      },
    },
  },
  opts = {
    mappings = {
      comment_line = "<leader>7",
      comment_visual = "<leader>7",
    },
    options = {
      custom_commentstring = function()
        return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
      end,
    },
  },
}
