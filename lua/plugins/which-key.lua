return {
  "folke/which-key.nvim",
  opts = {
    -- your which-key config here
  },
  config = function(_, opts)
    require("which-key").setup(opts)
  end,
}
