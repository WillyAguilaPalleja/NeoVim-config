return {
  "mg979/vim-visual-multi",
  branch = "master",
  lazy = false,
  keys = {
    { "<C-d>", mode = { "n", "x" } },
    { "<C-Up>", mode = { "n", "x" } },
    { "<C-Down>", mode = { "n", "x" } },
  },
  init = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
      ["Select All"] = "<leader>ma",
      ["Skip Region"] = "<leader>ms",
      ["Remove Region"] = "<leader>mr",
      ["Add Cursor Down"] = "<C-Down>",
      ["Add Cursor Up"] = "<C-Up>",
    }
    vim.g.VM_theme = "iceblue"
    vim.g.VM_highlight_matches = "underline"
    vim.g.VM_show_warnings = 0
  end,
}
