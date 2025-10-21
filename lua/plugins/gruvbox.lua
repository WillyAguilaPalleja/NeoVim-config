return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      contrast = "",
      transparent_mode = false,
      italic = {
        strings = false,
        emphasis = false,
        comments = true,
        operators = false,
        folds = false,
      },
      overrides = {
        ["@keyword.coroutine"] = { link = "@keyword.function" },
        ["@keyword.import"] = { link = "@keyword" },
        ["@variable.parameter"] = { link = "@constant" },
      },
    })
    vim.cmd.colorscheme("gruvbox")
  end,
}
