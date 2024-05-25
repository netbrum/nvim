return {
  "lukas-reineke/indent-blankline.nvim",
  event = "LazyFile",
  opts = {
    scope = { show_start = false, show_end = false },
    exclude = {
      filetypes = {
        "help",
        "dashboard",
        "neo-tree",
        "lazy",
        "mason",
        "toggleterm",
      },
    },
  },
  main = "ibl",
}
