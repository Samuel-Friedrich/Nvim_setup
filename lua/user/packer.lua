-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


	--use({
	--	'rose-pine/neovim',
	--	as = 'rose-pine',
	--	config = function()
	--		vim.cmd('colorscheme rose-pine')
	--	end
	--})


	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

		-- 🌑 Onedark theme
	use {
		'navarasu/onedark.nvim',
		config = function()
			require('onedark').setup {
				style = 'darker'  -- Try 'dark', 'cool', 'deep', 'warm', 'warmer', 'light'
			}
			require('onedark').load()
		end
	}
	
end)
