local treesitter = require("nvim-treesitter")

local parsers = {
    "c",
    "cpp",
    "lua",
    "javascript",
    "typescript",
    "css",
    "html",
    "python",
    "java",
    "go",
    "rust",
    "php",
    "vim",
    "vimdoc",
    "query",
    "xml",
    "toml",
}

-- Install missing parsers.
-- This is a no-op for parsers that are already installed.
treesitter.install(parsers)

-- Enable Tree-sitter features when opening supported files.
vim.api.nvim_create_autocmd("FileType", {
    pattern = parsers,
    callback = function(args)
        -- Highlighting
        vim.treesitter.start(args.buf)

        -- Tree-sitter indentation
        vim.bo[args.buf].indentexpr =
            "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
