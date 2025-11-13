local lsp = require("utils.lsp")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "svelte" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {
          keys = {
            {
              "<leader>co",
              lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
      },
    },
  },
}
