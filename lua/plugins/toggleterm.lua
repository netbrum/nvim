local function toggle_lazygit()
  local terminal = require("toggleterm.terminal").Terminal

  local lazygit = terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "rounded",
    },
  })

  lazygit:toggle()
end

return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  version = "*",
  keys = {
    {
      "<leader>g",
      toggle_lazygit,
      mode = {
        "n",
      },
    },
  },
}
