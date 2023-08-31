require("core")
require("plugins")
vim.cmd([[
  augroup filetype_c
    autocmd!
    autocmd BufRead,BufNewFile *.h setlocal filetype=c
  augroup END
]])

