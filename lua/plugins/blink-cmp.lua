return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = { "lsp", "path" },
      per_filetype = {
        markdown = { "path" },
        yaml = { "lsp", "path" },
        json = { "lsp", "path" },
        python = { "lsp", "path" },
        typescript = { "lsp", "path" },
        javascript = { "lsp", "path" },
        typescriptreact = { "lsp", "path" },
        javascriptreact = { "lsp", "path" },
        html = { "lsp", "path" },
        css = { "lsp", "path" },
      },
      providers = {
        buffer = { enabled = false },
      },
    },
    completion = {
      list = {
        max_items = 50,
      },
      trigger = {
        show_in_snippet = false,
        show_on_insert_on_trigger_character = false,
      },
    },
    enabled = function()
      if vim.bo.filetype == "markdown" or vim.bo.filetype == "sql" then
        return false
      end

      if vim.bo.filetype == "python" then
        local node = vim.treesitter.get_node()
        local in_interpolation = false

        while node do
          local node_type = node:type()
          if node_type == "interpolation" then
            in_interpolation = true
            break
          end
          if node_type == "string" or node_type == "string_content" or node_type == "concatenated_string" then
            return false
          end
          node = node:parent()
        end

        if in_interpolation then
          return true
        end
      end
      return true
    end,
  },
}
