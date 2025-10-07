local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Copy (yank) to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', opts)
vim.keymap.set('n', '<leader>Y', '"+Y', opts)

-- Cut (delete) to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', opts)
vim.keymap.set('n', '<leader>D', '"+D', opts)

-- Paste from system clipboard
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', opts)
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', opts)

vim.keymap.set("n", "<C-h>", "TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "TmuxNavigateRight<CR>", { silent = true })
