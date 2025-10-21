return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    { "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "File History" },
    { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "Current File History" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
  },
  opts = {
    enhanced_diff_hl = true,
    view = {
      default = {
        layout = "diff2_horizontal",
      },
      merge_tool = {
        layout = "diff3_horizontal",
      },
    },
  },
}
