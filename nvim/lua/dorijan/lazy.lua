-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({

  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- Themes / Colorschemes
  { "catppuccin/nvim", name = "catppuccin" },
  'navarasu/onedark.nvim',
  'nvim-tree/nvim-web-devicons',
  'prichrd/netrw.nvim',
  'bluz71/nvim-linefly',
  --

  {
      'nvim-treesitter/nvim-treesitter',
      build = function ()
         pcall(require('nvim-treesitter.install').update {with_sync = true})
      end
  },

  'mbbill/undotree',

  -- Git --
  'tpope/vim-fugitive',
  'airblade/vim-gitgutter',
  'f-person/git-blame.nvim',
  --
  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  dependencies = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		   {'williamboman/mason.nvim'},
		   {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {"rafamadriz/friendly-snippets"},
		  {'L3MON4D3/LuaSnip'},
	  }
  },

  {
	  "windwp/nvim-autopairs",
	  event = "InsertEnter",
	  config = true
  },
  "rafamadriz/friendly-snippets",

  {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = { {"nvim-lua/plenary.nvim"} }
  },
  'christoomey/vim-tmux-navigator'
})
