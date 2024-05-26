return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lsp = {
      -- override markdown rendering so that cmp and other plugins use Treesitter
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      long_message_to_split = true, -- long messages will be sent to a split
    },
    cmdline = {
      enabled = false,
    },
    popupmenu = {
      enabled = false,
    },
    messages = {
      enabled = false,
    },
    notify = {
      enabled = false,
    },
    views = {
      mini = {
        -- LSP progress overlaps with lualine by default, not too sure why
        position = {
          row = -2,
          col = "100%",
        },
      },
    },
  },
}
