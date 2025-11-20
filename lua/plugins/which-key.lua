return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add({
      { "<leader>b", group = "Buffer" },
      { "<leader>c", group = "Code" },
      { "<leader>d", group = "Debug" },
      { "<leader>f", group = "File/find" },
      { "<leader>g", group = "Git" },
      { "<leader>s", group = "Search" },
      { "<leader>t", group = "Test" },
      { "<leader>u", group = "UI" },
      { "<leader>w", group = "Windows" },
      { "<leader>x", group = "Diagnostics/quickfix" },
      { "<leader><Tab>", group = "Buffers" },
      { "[d", desc = "Previous diagnostic" },
      { "]d", desc = "Next diagnostic" },
      { "gd", desc = "Go to definition" },
      { "gr", desc = "Go to references" },
      { "K", desc = "Hover documentation" },
      { ",v", desc = "Select Python venv" },
    })
  end,
}
