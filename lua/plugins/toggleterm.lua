local function toggle_lazygit()
  local terminal = require("toggleterm.terminal").Terminal

  local lazygit = terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float",
    border = "double",
  })

  lazygit:toggle()
end

return {
  "akinsho/toggleterm.nvim",
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
