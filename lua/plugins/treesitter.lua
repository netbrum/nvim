return {
  "nvim-treesitter/nvim-treesitter",
  event = { "LazyFile", "VeryLazy" },
  build = ":TSUpdate",
  lazy = false,
  opts = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    ensure_installed = {
      "lua",
      "markdown",
      "markdown_inline",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.config").setup(opts)

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("lazyvim_treesitter", { clear = true }),
      callback = function(ev)
        pcall(vim.treesitter.start, ev.buf)
      end,
    })
  end,
}
