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
  {
    "linux-cultist/venv-selector.nvim",
    lazy = false,
    branch = "main",
    keys = {
      { "<leader>v", "<cmd>VenvSelect<cr>" },
    },
    opts = {},
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
      -- stylua: ignore
      keys = {
        { "<leader>dPt", function() require("dap-python").test_method() end, desc = "Debug Method", ft = "python" },
        { "<leader>dPc", function() require("dap-python").test_class() end, desc = "Debug Class", ft = "python" },
      },
    },
    config = function()
      local debugpy = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(debugpy)
    end,
  },
}
