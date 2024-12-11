return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  -- stylua: ignore
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame Line" },
    { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse" },
    { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "Lazygit Current File History" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Log (cwd)" },
    { "<leader>t", function() Snacks.terminal() end, desc = "Toggle Terminal" },
  },
  opts = {
    dashboard = {
      preset = {
        header = [[
 _____/\/\____/\/\__/\/\/\/\/\/\____/\/\/\/\____/\/\____/\/\__/\/\/\/\__/\/\______/\/\_
 ____/\/\/\__/\/\__/\____________/\/\____/\/\__/\/\____/\/\____/\/\____/\/\/\__/\/\/\__
 ___/\/\/\/\/\/\__/\/\/\/\/\____/\/\____/\/\__/\/\____/\/\____/\/\____/\/\/\/\/\/\/\___
 __/\/\__/\/\/\__/\/\__________/\/\____/\/\____/\/\/\/\______/\/\____/\/\__/\__/\/\____
 _/\/\____/\/\__/\/\/\/\/\/\____/\/\/\/\________/\/\______/\/\/\/\__/\/\______/\/\_____]],
      },
    },
  },
}
