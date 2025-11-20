return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = "VeryLazy",

  config = function()
    -- Optional: nicer defaults
    vim.g.VM_theme = "iceblue"
    vim.g.VM_default_mappings = 0

    local wk = require("which-key")

    wk.add({
      -- Main multicursor group
      { "<leader>m", group = "multicursor" },

      -- Add cursors
      {
        "<leader>mn",
        "<Plug>(VM-Find-Under)",
        desc = "Select next occurrence (Ctrl-D style)",
      },
      {
        "<leader>mp",
        "<Plug>(VM-Select-All)",
        desc = "Select all occurrences",
      },

      -- Manual cursor placement
      {
        "<leader>md",
        "<Plug>(VM-Add-Cursor-Down)",
        desc = "Add cursor down",
      },
      {
        "<leader>mu",
        "<Plug>(VM-Add-Cursor-Up)",
        desc = "Add cursor up",
      },

      -- Extend visual selection
      {
        "<leader>ma",
        "<Plug>(VM-Add-Cursor-At-Pos)",
        desc = "Add cursor at cursor position",
      },

      -- Remove cursors
      {
        "<leader>mx",
        "<Plug>(VM-Remove-Cursor)",
        desc = "Remove last cursor",
      },

      -- Quit multicursor mode
      {
        "<leader>mq",
        "<Plug>(VM-Quit)",
        desc = "Quit multicursor mode",
      },
    })

    -- Actual mappings (for non–which-key users)
    vim.keymap.set("n", "<leader>mn", "<Plug>(VM-Find-Under)")
    vim.keymap.set("n", "<leader>mp", "<Plug>(VM-Select-All)")
    vim.keymap.set("n", "<leader>md", "<Plug>(VM-Add-Cursor-Down)")
    vim.keymap.set("n", "<leader>mu", "<Plug>(VM-Add-Cursor-Up)")
    vim.keymap.set("n", "<leader>ma", "<Plug>(VM-Add-Cursor-At-Pos)")
    vim.keymap.set("n", "<leader>mx", "<Plug>(VM-Remove-Cursor)")
    vim.keymap.set("n", "<leader>mq", "<Plug>(VM-Quit)")
  end,
}
