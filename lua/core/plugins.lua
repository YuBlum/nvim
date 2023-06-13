local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
local packer = require("packer")

packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
        local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
        ts_update()
    end,
  }
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.1",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"
  use "vim-airline/vim-airline"
  use "YuBlum/colorschemes"
  use "YuBlum/minilab"
  use "nvim-tree/nvim-web-devicons"
  use "prichrd/netrw.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "rktjmp/lush.nvim"
  use "metalelf0/jellybeans-nvim"
  use "andweeb/presence.nvim"
  use "szw/vim-maximizer"
  if packer_bootstrap then packer.sync() end
end)
