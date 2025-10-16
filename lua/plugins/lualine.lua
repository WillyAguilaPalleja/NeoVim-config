return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      theme = "gruvbox",
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = {},
      lualine_x = {},
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    tabline = {},
    winbar = {
      lualine_c = { { "filename", path = 1 } },
    },
    inactive_winbar = {
      lualine_c = { { "filename", path = 1 } },
    },
    extensions = {},
  },
}
