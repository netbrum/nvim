local Util = require("utils.mapping")
local lsp = require("utils.lsp")

local M = {}

-- stylua: ignore
M.keys = {
  { "<leader>cl", "<cmd>LspInfo<cr>", desc = "Lsp Info" },
  { "gd", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" },
  { "gr", vim.lsp.buf.references, desc = "References", nowait = true },
  { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
  { "gI", vim.lsp.buf.implementation, desc = "Goto Implementation" },
  { "gy", vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" },
  { "K", vim.lsp.buf.hover, desc = "Hover" },
  { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" }, has = "codeAction" },
  {
    "<leader>cA",
    lsp.action.source,
    desc = "Source Action",
    has = "codeAction",
  },
}

function M.on_attach(_, buffer)
  local options = {
    buffer = buffer,
  }

  for _, key in pairs(M.keys) do
    Util.keymap("n", key[1], key[2], options)
  end
end

return M
