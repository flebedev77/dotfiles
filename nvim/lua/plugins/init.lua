local Plug = vim.fn["plug#"]
vim.call "plug#begin"

Plug "sbdchd/neoformat"

Plug "ThePrimeagen/vim-be-good"

Plug "nvim-treesitter/nvim-treesitter"

Plug "AndrewRadev/splitjoin.vim"

vim.call "plug#end"

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.*" },
  command = ":Neoformat",
})

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
