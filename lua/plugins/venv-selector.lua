return {
  "AckslD/swenv.nvim",
  lazy = false,
  keys = {
    { ",v", function() require('swenv.api').pick_venv() end, desc = "Pick Venv" },
  },
  opts = {
    get_venvs = function(venvs_path)
      return require('swenv.api').get_venvs(venvs_path)
    end,
    venvs_path = vim.fn.getcwd(),
  },
}
