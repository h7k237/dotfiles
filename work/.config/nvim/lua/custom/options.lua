-- Tabs & Indentation
vim.opt.tabstop = 8           -- Number of visual spaces per TAB
vim.opt.softtabstop = 4       -- Number of spaces in TAB when editing
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.shiftwidth = 4        -- Number of spaces for each indentation

-- Listchars (visualize whitespace and EOL)
vim.opt.list = true
vim.opt.listchars = { tab = "»-", trail = "·" }
