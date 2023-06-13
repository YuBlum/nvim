local set = vim.o

set.lazyredraw    = true --> doesn't redraw when running a macro
set.wildmenu      = true --> better command-line completion
set.smartindent   = true --> smart indentation
set.termguicolors = true --> terminal uses gui colors

-- case sensitivity on search mode
set.ignorecase = true
set.smartcase  = true

-- deactivate all the annoying backup stuff
set.writebackup = false
set.backup      = false
set.swapfile    = false

-- tab related
set.expandtab  = true
set.smarttab   = true
set.shiftwidth = 2
set.tabstop    = 2

-- line numbers
set.relativenumber = true
set.number         = true

set.mouse=""
