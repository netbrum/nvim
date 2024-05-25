local M = {}

function M.init()
  require("core.autocmd")
  require("core.keymaps")
  require("core.options")

  require("utils.event").setup()
end

return M
