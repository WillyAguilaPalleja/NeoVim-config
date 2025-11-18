return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-python",
    "marilari88/neotest-vitest",
    "adrigzr/neotest-mocha",
    "nvim-neotest/nvim-nio",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    { "<leader>tn", desc = "Neotest: Run nearest test" },
    { "<leader>tf", desc = "Neotest: Run file tests" },
    { "<leader>ts", desc = "Neotest: Toggle summary" },
    { "<leader>to", desc = "Neotest: Open test output" },
    { "<leader>tS", desc = "Neotest: Stop tests" },
  },
  opts = function(_, opts)
    local function load_env_file(filepath)
      local env_vars = {}
      local file = io.open(filepath, "r")
      if file then
        for line in file:lines() do
          if not line:match("^%s*#") and not line:match("^%s*$") then
            local key, value = line:match("^([%w_]+)=(.*)$")
            if key and value then
              value = value:gsub("^['\"](.*)['\"]", "%1")
              value = value:gsub("%s*#.*$", "")
              value = vim.trim(value)
              env_vars[key] = value
            end
          end
        end
        file:close()
      end
      return env_vars
    end

    local cwd = vim.fn.getcwd()
    local env_file = cwd .. "/ENV/test.env"
    local test_env = load_env_file(env_file)
    
    local full_env = vim.tbl_extend("force", vim.fn.environ(), test_env)
    
    opts.adapters = opts.adapters or {}
    table.insert(opts.adapters, require("neotest-python")({
      dap = { justMyCode = false },
      env = full_env,
    }))
    table.insert(opts.adapters, require("neotest-vitest")({
      env = test_env,
    }))
    
    local mocha_env = vim.tbl_extend("force", test_env, { NODE_ENV = "test" })
    table.insert(opts.adapters, require("neotest-mocha")({
      command = "npx mocha",
      env = mocha_env,
    }))
    return opts
  end,
  config = function(_, opts)
    require("neotest").setup(opts)
    require("keymaps.neotest")
  end,
}
