return {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    opts.linters_by_ft = opts.linters_by_ft or {}
    opts.linters_by_ft.python = { "ruff" }
    opts.linters_by_ft.javascript = { "eslint_d" }
    opts.linters_by_ft.typescript = { "eslint_d" }
    opts.linters_by_ft.javascriptreact = { "eslint_d" }
    opts.linters_by_ft.typescriptreact = { "eslint_d" }
    opts.linters_by_ft.sql = {}
    opts.linters_by_ft.mysql = {}
    opts.linters_by_ft.plsql = {}
    return opts
  end,
  config = function(_, opts)
    local lint = require("lint")
    lint.linters_by_ft = opts.linters_by_ft

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
