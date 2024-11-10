local Util = require("utils.mapping")
local lsp = require("utils.lsp")

local M = {}

-- stylua: ignore
M.keys = {
  { "<leader>cl", "<cmd>LspInfo<cr>", desc = "Lsp Info" },
  { "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, desc = "Goto Definition", has = "definition" },
  { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
  { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
  { "gI", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, desc = "Goto Implementation" },
  { "gy", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, desc = "Goto T[y]pe Definition" },
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
