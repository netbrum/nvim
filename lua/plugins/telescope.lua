local have_make = vim.fn.executable("make") == 1
local have_cmake = vim.fn.executable("cmake") == 1

local Utils = require("utils.load")

return {
  "nvim-telescope/telescope.nvim",
  version = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = have_make and "make"
          or "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
        enabled = have_make or have_cmake,
        config = function(plugin)
          Utils.on_load("telescope.nvim", function()
            local ok = pcall(require("telescope").load_extension, "fzf")
            if not ok then
              local lib = plugin.dir .. "/build/libfzf.so"
              if not vim.uv.fs_stat(lib) then
                require("lazy").build({ plugins = { plugin }, show = false })
              end
            end
          end)
        end,
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>o", "<cmd>Telescope find_files<cr>", mode = "n" },
  },
}
