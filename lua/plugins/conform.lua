return {
  "stevearc/conform.nvim",
  lazy = true,
  -- stylua: ignore
  keys = {
    { "<leader>f", function() require("conform").format() end, mode = "n", desc = "Format" },
  },
  opts = {
    formatters_by_ft = {
      rust = { "rustfmt" },
      lua = { "stylua" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      svelte = { "prettierd" },
      python = { "ruff_format" },
    },
  },
}
