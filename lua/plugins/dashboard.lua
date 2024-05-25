return {
  "nvimdev/dashboard-nvim",
  lazy = false,
  event = "VimEnter",
  opts = function()
    local logo = [[
     _/\/\____/\/\__/\/\/\/\/\/\____/\/\/\/\____/\/\____/\/\__/\/\/\/\__/\/\______/\/\_
    _/\/\/\__/\/\__/\____________/\/\____/\/\__/\/\____/\/\____/\/\____/\/\/\__/\/\/\_
   _/\/\/\/\/\/\__/\/\/\/\/\____/\/\____/\/\__/\/\____/\/\____/\/\____/\/\/\/\/\/\/\_
  _/\/\__/\/\/\__/\/\__________/\/\____/\/\____/\/\/\/\______/\/\____/\/\__/\__/\/\_
 _/\/\____/\/\__/\/\/\/\/\/\____/\/\/\/\________/\/\______/\/\/\/\__/\/\______/\/\_
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
          { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
          { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
          { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
          { action = "qa", desc = " Quit", icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
