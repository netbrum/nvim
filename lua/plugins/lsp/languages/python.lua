local lsp = require("utils.lsp")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "python" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          cmd_env = { RUFF_TRACE = "messages" },
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
          keys = {
            {
              "<leader>co",
              lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
        pyright = {},
      },
    },
  },
}
