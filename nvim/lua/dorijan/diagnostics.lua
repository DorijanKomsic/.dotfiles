local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'go', function () vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({count=1, float=true}) end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({count=-1, float=true}) end, opts)

local signs = { Error = " ", Warn = "", Hint = "", Info = " " }
vim.diagnostic.config({
    virtual_text = {
        spacing = 4,
        prefix = '●',
        -- Only show one diagnostic per line
        severity = { min = vim.diagnostic.severity.HINT }
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = signs.Error,
            [vim.diagnostic.severity.WARN] = signs.Warn,
            [vim.diagnostic.severity.HINT] = signs.Hint,
            [vim.diagnostic.severity.INFO] = signs.Info,
        }
    },
    underline = true,
    update_in_insert = false,  -- Don't update while typing
    severity_sort = true,  -- Show errors first
})
