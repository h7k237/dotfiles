local map = vim.keymap.set

-- Buffers
map('n', '<C-j>', ':bprevious<CR>', { desc = 'Previous buffer' })
map('n', '<C-k>', ':bnext<CR>', { desc = 'Next buffer' })
map('n', '<leader>n', ':enew<CR>', { desc = 'New buffer' })
map('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Windows
map('n', '<leader>x', ':close<CR>', { desc = 'Close window' })

-- Tabs
map('n', '<leader>t', '<C-w>T', { desc = 'Move window to new tab' })
map('n', '<S-Tab>', ':tabprevious<CR>', { desc = 'Previous tab' })
map('n', '<Tab>', ':tabnext<CR>', { desc = 'Next tab' })
map('n', '<leader>c', ':tabclose<CR>', { desc = 'Close tab' })

-- Telescope
map('n', '<leader>fg', ':Telescope git_files<CR>', { desc = 'Git Files' })
local telescope_builtin = require("telescope.builtin")
map("n", "<leader>gw",
    function()
        telescope_builtin.grep_string({ search = vim.fn.expand("<cword>") })
    end, { desc = 'Live grep cword' })

-- NvimTree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
