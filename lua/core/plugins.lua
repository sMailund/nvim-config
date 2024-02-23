require("lazy").setup({
  "ellisonleao/gruvbox.nvim",
  "vim-test/vim-test",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "simrat39/rust-tools.nvim",
  --"nanotee/nvim-lsp-basics",
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
})
