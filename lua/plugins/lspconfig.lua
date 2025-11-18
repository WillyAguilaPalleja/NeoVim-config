return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = { enabled = false },
      html = {
        filetypes = { "html" },
      },
      ts_ls = {
        init_options = {
          preferences = {
            includeCompletionsWithSnippetText = false,
            includeCompletionsWithInsertText = false,
          },
        },
      },
      basedpyright = {
        enabled = true,
        settings = {
          basedpyright = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = "workspace",
              useLibraryCodeForTypes = true,
              autoImportCompletions = true,
              typeCheckingMode = "basic",
              indexing = true,
            },
          },
        },
      },
    },
  },
}
