return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  config = function()
    local path = "~/.virtualenvs/debugpy/bin/python"
    require("dap-python").setup(path)
  end,
}
