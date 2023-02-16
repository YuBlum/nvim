local function map(m, k, f) 
	vim.keymap.set(m, k, f, { silent = true })
end

vim.g.mapleader = ' ' 

map('n', '<leader>w', '<C-a>') --< inc number
map('n', '<leader>s', '<C-x>') --< dec number

map('n', '<space><space>', ':e ') --< open file
map('n', '<TAB>', '0<C-6>') --< swap file

map('n', '<F4>', ':w<CR>:!make<CR>') --< save and run make

map('n', '<leader>sv', '<C-w>v') --< split vertical
map('n', '<leader>sh', '<C-w>s') --< split horizontal
map('n', '<leader>se', '<C-w>=') --< split resize to default
map('n', '<leader>sx', ':close<CR>') --< close split
map('n', '<leader>sm', ':MaximizerToggle<CR>') --< maximize split


map('n', '<leader>p', '"0p') --< paste just copied things
map('n', '<leader>P', '"0P') --< paste just copied things
