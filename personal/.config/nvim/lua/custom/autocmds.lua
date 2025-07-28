vim.api.nvim_create_augroup("CsvAutoCmd", { clear = true })
vim.api.nvim_create_autocmd({"BufReadPost", "BufNewFile"}, {
    pattern = "*.csv",
    group = "CsvAutoCmd",
    callback = function()
        vim.cmd('CsvViewEnable')
    end,
})
