local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function (use)
	use 'wbthomason/packer.nvim'
	-- plugins
	use 'szw/vim-maximizer'
	use 'andreasvc/vim-256noir'
	use 'ntk148v/komau.vim'
	use 'Lokaltog/vim-distinguished'
	use 'norcalli/nvim-colorizer.lua'
	use 'YuBlum/colorschemes'

	use {
		"nvim-treesitter/nvim-treesitter",
		commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
	}

	if packer_bootstrap then
    require('packer').sync()
  end
end)
