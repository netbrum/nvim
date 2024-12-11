local icons = require("utils.icons")

return {
  "saghen/blink.cmp",
  lazy = false,
  dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  opts = {
    kind_icons = icons.kinds,
    keymap = { preset = "enter" },
    highlight = {
      use_nvim_cmp_as_default = false,
    },
    nerd_font_variant = "mono",
    windows = {
      autocomplete = {
        winblend = vim.o.pumblend,
      },
      documentation = {
        auto_show = true,
      },
      ghost_text = {
        enabled = vim.g.ai_cmp,
      },
    },
    accept = { auto_brackets = { enabled = true } },
    sources = {
      completion = {
        enabled_providers = { "lsp", "path", "snippets" },
      },
    },
  },
  opts_extend = { "sources.completion.enabled_providers" },
}
