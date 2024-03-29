vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- packer
  use 'wbthomason/packer.nvim'
  	-- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
    }
    	-- tema
  use ({ 'rose-pine/neovim', name = 'rose-pine' })
  	-- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,}
 	-- harpoon 
  use("theprimeagen/harpoon")
 	-- prettier 
  use 'prettier/vim-prettier'
  	-- lsp
  use {
       'VonHeikemen/lsp-zero.nvim',
       branch = 'v2.x',
       requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
           'williamboman/mason.nvim',
           run = function()
           pcall(vim.cmd, 'MasonUpdate')
           end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
       }
    }
end)
