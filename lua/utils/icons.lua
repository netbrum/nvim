local M = {}

M.diagnostics = {
  Error = " ",
  Warn = " ",
  Hint = "󰌵 ",
  Info = " ",
}

M.dap = {
  Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
  Breakpoint = " ",
  BreakpointCondition = " ",
  BreakpointRejected = { " ", "DiagnosticError" },
  LogPoint = ".>",
}

return M
