return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-python",
    "nvim-neotest/nvim-nio",
  },
  opts = function(_, opts)
    opts.adapters = {
      require("neotest-python")({
        dap = { justMyCode = false },
      }),
    }
  end,
  config = function(_, opts)
    require("neotest").setup(opts)
    require("keymaps.neotest") -- 👈 Add this
  end,
}
