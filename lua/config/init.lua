local M = {}

function M.init()
  require("core.autocmd")
  require("core.keymaps")
  require("core.options")
end

return M
