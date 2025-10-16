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
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
      },
    })
    -- Load fzf extension if installed
    pcall(telescope.load_extension, "fzf")
  end,
}
