return {
  { 'ellisonleao/gruvbox.nvim', lazy = true },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function() require('colors') end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter').install({ "c", "lua", "rust", "go", "javascript", "typescript" })
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function() require('tree-sitter-config') end,
  },
  {
    'williamboman/mason.nvim',
    config = function() require('mason').setup() end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    config = function() require('mason-lspconfig').setup() end,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'williamboman/mason-lspconfig.nvim', 'hrsh7th/cmp-nvim-lsp' },
    config = function() require('lsp-config') end,
  },
  { 'nvim-lua/plenary.nvim', lazy = true },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require('telescope-config') end,
  },
  { 'kyazdani42/nvim-web-devicons', lazy = true },
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function() require('nvim-tree-config') end,
  },
  'mfussenegger/nvim-dap',
  'jose-elias-alvarez/null-ls.nvim',

  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', 'saadparwaiz1/cmp_luasnip', 'L3MON4D3/LuaSnip' },
    config = function() require('cmp-config') end,
  },
  'saadparwaiz1/cmp_luasnip',

  {
    'L3MON4D3/LuaSnip',
    config = function() require('snippets') end,
  },
  'rafamadriz/friendly-snippets',

  {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs-config') end,
  },
  'github/copilot.vim',
  {
    'mhartington/formatter.nvim',
    config = function() require('formatter-config') end,
  },
  'APZelos/blamer.nvim',
  'mfussenegger/nvim-jdtls',
  {
    'terrortylor/nvim-comment',
    config = function() require('comment-toggle-config') end,
  },
  'mrcjkb/haskell-tools.nvim',
}
