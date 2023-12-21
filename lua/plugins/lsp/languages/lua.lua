return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              checkThirdParty = false,
            },
            telemetry = {
              enabled = false,
            },
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      },
    },
  },
}
