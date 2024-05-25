return {
  "L3MON4D3/LuaSnip",
  event = "VeryLazy",
  dependencies = {
    "nvim-cmp",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
    },
    opts = function(_, opts)
      opts.snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      }
      table.insert(opts.sources, { name = "luasnip" })
    end,
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
}
