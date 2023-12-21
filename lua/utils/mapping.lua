local M = {}

function M.keymap(mode, key, action, opts)
  local option = { noremap = false, silent = true }

  if opts then
    option = vim.tbl_extend("force", option, opts)
  end

  vim.keymap.set(mode, key, action, option)
end

return M
