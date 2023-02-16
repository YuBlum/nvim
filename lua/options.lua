local g = vim.g
local set = vim.opt

vim.cmd([[
	set nrformats+=alpha
]])

set.number = true
set.relativenumber = true
set.hlsearch = false
set.breakindent = true
set.tabstop = 2
set.shiftwidth = 2
set.autoindent = true
set.termguicolors = true
set.background = 'dark'
set.clipboard:append('unnamedplus')
set.backspace = 'indent,eol,start'
set.splitright = true
set.splitbelow = true
set.wildmenu = true
set.filetype = 'on'
set.path = set.path + '**'
