require 'options'
require 'keybinds'
require 'plugins'
require 'plugins.treesitter'
require 'plugins.colorizer'
vim.cmd 'colorscheme simpler'
vim.cmd [[
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c
]]
