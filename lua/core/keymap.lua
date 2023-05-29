vim.g.mapleader = ","
local keymap = vim.keymap.set

-- move lines in visual mode
keymap("x", "K", ":m '<-2<CR>gv=gv")
keymap("x", "J", ":m '>+1<CR>gv=gv")

keymap("n", "J", "mzJ`z") --> 'J' doesn't move the cursor

keymap("n", "<leader>e", ":Ex<CR>") --> go to the navigation mode

-- some templates
keymap("n", "<leader>c", ":r~/.config/nvim/templates/main.c<CR>k\"_dd5jl")
keymap("n", "<leader>h", ":r~/.config/nvim/templates/main.h<CR>k\"_ddV3j:s/TEMPLATE/")

-- copy to the void register instead of the main one
keymap("n", "<leader>d", "\"_d")
keymap("v", "<leader>d", "\"_d")
keymap("x", "<leader>p", "\"_dP")

-- copy to the clipboard register instead of the main one
keymap("n", "<leader>y", "\"+y")
keymap("n", "<leader>Y", "\"+Y")
keymap("v", "<leader>y", "\"+y")

-- buffer related
keymap("n", "<leader>bn", ":bnext<CR>")
keymap("n", "<leader>bp", ":bprevious<cr>")
keymap("n", "<leader>bd", ":bdelete<CR>")
keymap("n", "<tab>", "<C-6>") --> swap between previous and current buffer

-- no highlight
keymap("n", "<leader>nh", ":noh<CR>")
