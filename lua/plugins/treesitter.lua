require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "cpp", "make", "markdown", "lua", "vim", "vimdoc" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
})
