local autocmd = vim.api.nvim_create_autocmd

autocmd({ "CursorHold" }, {
  pattern = "*",
  callback = function()
    vim.diagnostic.open_float()
  end,
})
