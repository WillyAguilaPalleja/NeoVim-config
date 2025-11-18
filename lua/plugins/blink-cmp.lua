return {
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      return vim.bo.filetype ~= "markdown"
    end,
    sources = {
      default = { "lsp", "path" },
      providers = {
        snippets = {
          enabled = false,
        },
      },
    },
    completion = {
      menu = {
        draw = {
          columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
        },
      },
    },
  },
}
