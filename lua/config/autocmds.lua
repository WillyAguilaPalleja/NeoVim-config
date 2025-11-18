-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.wrap = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    local env_file = vim.fn.getcwd() .. "/ENV/test.env"
    if vim.fn.filereadable(env_file) == 1 then
      for line in io.lines(env_file) do
        if not line:match("^%s*#") and not line:match("^%s*$") then
          local key, value = line:match("^([%w_]+)=(.*)$")
          if key and value then
            value = value:gsub("^['\"](.*)['\"]", "%1")
            value = value:gsub("%s*#.*$", "")
            vim.fn.setenv(key, vim.trim(value))
          end
        end
      end
    end
  end,
})
