local neotest = require("neotest")

-- Run the nearest test
vim.keymap.set("n", "<leader>tn", function()
  neotest.run.run()
end, { desc = "Neotest: Run nearest test", silent = true })

-- Run all tests in the current file
vim.keymap.set("n", "<leader>tf", function()
  neotest.run.run(vim.fn.expand("%"))
end, { desc = "Neotest: Run file tests", silent = true })

-- Toggle the test summary panel
vim.keymap.set("n", "<leader>ts", function()
  neotest.summary.toggle()
end, { desc = "Neotest: Toggle summary", silent = true })

-- Open the test output (in floating window or split)
vim.keymap.set("n", "<leader>to", function()
  neotest.output.open({ enter = true, auto_close = true })
end, { desc = "Neotest: Open test output", silent = true })

-- Stop the running tests
vim.keymap.set("n", "<leader>tS", function()
  neotest.run.stop()
end, { desc = "Neotest: Stop tests", silent = true })
