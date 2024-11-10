return {
  "lukas-reineke/indent-blankline.nvim",
  event = "LazyFile",
  opts = {
    scope = { show_start = false, show_end = false },
    exclude = {
      filetypes = {
        "help",
        "dashboard",
        "lazy",
        "mason",
        "snacks_terminal",
        "snacks_win",
      },
    },
  },
  main = "ibl",
}
