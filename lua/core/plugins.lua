require("lazy").setup({
  "ellisonleao/gruvbox.nvim",
  "vim-test/vim-test",
  "tpope/vim-fugitive",
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
})
