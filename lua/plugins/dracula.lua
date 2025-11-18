return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula").setup({
        italic_comment = false,
        lualine_bg_color = "#3c3f41",
        colors = {
          bg = "#2b2b2b",
          fg = "#a9b7c6",
          selection = "#214283",
          comment = "#808080",
          red = "#ff6b68",
          orange = "#cc7832",
          yellow = "#ffc66d",
          green = "#6a8759",
          purple = "#9876aa",
          cyan = "#629755",
          pink = "#ff79c6",
          white = "#ffffff",
          black = "#1c1c1c",
          bright_black = "#4e4e4e",
          bright_white = "#ffffff",
        },
        overrides = {
          -- Control & structural keywords
          ["@keyword"] = { fg = "#cc7832", italic = false },
          ["@keyword.control"] = { fg = "#cc7832", italic = false },
          ["@keyword.function"] = { fg = "#cc7832", italic = false },
          ["@keyword.coroutine"] = { fg = "#cc7832", italic = false },

          -- Function and method definitions
          ["@function"] = { fg = "#f8f8f2", italic = false },
          ["@function.call"] = { fg = "#f8f8f2", italic = false },
          ["@function.builtin"] = { fg = "#ffc66d", italic = false },
          ["@function.decorator"] = { fg = "#ffc66d", italic = false },
          ["@method"] = { fg = "#f8f8f2", italic = false },
          ["@method.call"] = { fg = "#f8f8f2", italic = false },

          -- Arguments
          ["@variable.parameter"] = { fg = "#ff6b68", italic = false }, 
          ["@lsp.type.parameter"] = { fg = "#ff6b68", italic = false },
          ["@lsp.typemod.parameter"] = { fg = "#ff6b68", italic = false },

          -- Variables
          ["@variable"] = { fg = "#a9b7c6", italic = false },
          ["@variable.builtin"] = { fg = "#a9b7c6", italic = false },
          ["@variable.local"] = { fg = "#a9b7c6", italic = false },

          -- Decorators & punctuation
          ["@decorator"] = { fg = "#ffc66d", italic = false },
          ["@attribute"] = { fg = "#ffc66d", italic = false },
          ["@punctuation.special"] = { fg = "#f8f8f2", italic = false },
          ["@punctuation.delimiter"] = { fg = "#f8f8f2", italic = false }, 

          -- Modules / import / namespaces
          ["@namespace"] = { fg = "#a9b7c6", italic = false },
          ["@module"] = { fg = "#a9b7c6", italic = false },
          ["@import"] = { fg = "#a9b7c6", italic = false },

          -- Constants / literals
          ["@string"] = { fg = "#6a8759", italic = false },
          ["@number"] = { fg = "#6897bb", italic = false },
          ["@boolean"] = { fg = "#cc7832", italic = false },
          ["@constant"] = { fg = "#a9b7c6", italic = false },
          ["@constant.builtin"] = { fg = "#cc7832", italic = false },

          -- Types and classes
          ["@type"] = { fg = "#ffc66d", italic = false },
          ["@type.builtin"] = { fg = "#6897bb", italic = false },
          ["@lsp.type.builtinType"] = { fg = "#6897bb", italic = false },
          ["@constructor"] = { fg = "#ffc66d", italic = false },
          ["@field"] = { fg = "#a9b7c6", italic = false },
          ["@property"] = { fg = "#a9b7c6", italic = false },

          -- Operators
          ["@operator"] = { fg = "#a9b7c6", italic = false },

          -- Python-specific
          ["@type.python"] = { fg = "#6897bb", italic = false },
          ["@function.python"] = { fg = "#ffc66d", italic = false },
        },
      })

      
      local manual_hl = {
        ["@keyword"] = "#cc7832",
        ["@keyword.control"] = "#cc7832",
        ["@keyword.function"] = "#cc7832", 
        ["@function"] = "#f8f8f2",
        ["@function.call"] = "#f8f8f2",
        ["@method"] = "#f8f8f2",
        ["@function.decorator"] = "#ffc66d",
        ["@variable.parameter"] = "#ff6b68", 
        ["@lsp.type.parameter"] = "#ff6b68",
        ["@type.builtin"] = "#6897bb",
        ["@punctuation.delimiter"] = "#f8f8f2",
      }

      for group, color in pairs(manual_hl) do
        vim.api.nvim_set_hl(0, group, { fg = color, italic = false })
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
