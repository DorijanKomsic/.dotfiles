vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-h>", "TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "TmuxNavigateRight<CR>", { silent = true })
