
-- ~/.config/nvim/lua/plugins/git-blame.lua
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 500,
      virt_text_pos = "eol", -- or "right_align"
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
  },
}
