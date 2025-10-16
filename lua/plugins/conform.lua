return {
  "stevearc/conform.nvim",
  opts = function()
    return {
      formatters_by_ft = {
        python = { "black_custom" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
      },
      formatters = {
        black_custom = {
          command = "black",
          args = { "--line-length", "100", "--quiet", "-" },
          stdin = true,
        },
      },
    }
  end,
}

