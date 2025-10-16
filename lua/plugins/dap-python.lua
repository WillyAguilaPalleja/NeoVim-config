return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  config = function()
    local path = "~/.virtualenvs/debugpy/bin/python" -- change to your Python
    require("dap-python").setup(path)
  end,
}
