return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  config = function()
    require("tiny-inline-diagnostic").setup({
      preset = "ghost",
      options = {
        show_source = true,
        multilines = true,
      },
    })
    vim.diagnostic.config({ virtual_text = false })
  end,
}
