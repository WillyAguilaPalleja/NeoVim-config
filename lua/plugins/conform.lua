return {
  "stevearc/conform.nvim",
  opts = function()
    return {
      formatters_by_ft = {
        python = { "isort", "black" },
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
        black = {
          prepend_args = { "--line-length", "100" },
        },
        isort = {
          prepend_args = { "-l", "90", "--profile", "black" },
        },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    }
  end,
}

