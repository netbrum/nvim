return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  -- stylua: ignore
  keys = {
    { "<leader>j", function() require("neo-tree.command").execute({ toggle = true }) end, mode = "n" , desc = "Toggle NeoTree"},
  },
  opts = {
    close_if_last_window = true,
    enable_diagnostics = false,
    default_component_configs = {
      git_status = {
        symbols = {
          modified = "",
        },
      },
    },
  },
  config = function(_, opts)
    local neotree = require("neo-tree")

    neotree.setup(opts)

    vim.api.nvim_create_autocmd("TermClose", {
      pattern = "*toggleterm*",
      callback = function()
        if package.loaded["neo-tree.sources.git_status"] then
          require("neo-tree.sources.git_status").refresh()
        end
      end,
    })
  end,
}
