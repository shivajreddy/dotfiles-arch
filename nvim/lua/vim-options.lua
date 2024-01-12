-- some vim commands
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Set Leader
vim.g.mapleader = " "

-- KEYMAPPINGS: NVIM
vim.keymap.set('n', '<Leader>n', ':noh<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>:normal! zz<CR>')
vim.keymap.set('n', '<Leader>rn', ':set relativenumber!<CR>')

vim.keymap.set('n', '<Leader>e', ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<Leader>s', ':w<CR>')

