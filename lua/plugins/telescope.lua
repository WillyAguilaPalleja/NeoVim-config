return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- Optional: for better fuzzy search performance
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          ".git",
          "__pycache__",
          "%.pyc",
          ".venv",
          "venv",
          "dist",
          "build",
          "%.min%.js",
          "%.min%.css",
        },
      },
      extensions = {
        fzf = {
          fuzzy = true, 
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })
    pcall(telescope.load_extension, "fzf")
  end,
}
