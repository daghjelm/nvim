-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')
  use('ellisonleao/gruvbox.nvim')
  use('folke/tokyonight.nvim')
  use('nvim-treesitter/nvim-treesitter', {
    run = ':TSUpdate'
  })
  use('nvim-treesitter/nvim-treesitter-context')
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')
  use('kyazdani42/nvim-web-devicons')
  use('kyazdani42/nvim-tree.lua', {
--    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  })
  use('mfussenegger/nvim-dap')
  use('jose-elias-alvarez/null-ls.nvim')

  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  use('saadparwaiz1/cmp_luasnip')

  use({"L3MON4D3/LuaSnip"})
  use('rafamadriz/friendly-snippets')

  use('windwp/nvim-autopairs')
  use('github/copilot.vim')
  use('mhartington/formatter.nvim')
  use('APZelos/blamer.nvim')
  use('mfussenegger/nvim-jdtls')
  use('terrortylor/nvim-comment')
  use('mrcjkb/haskell-tools.nvim')
end)
