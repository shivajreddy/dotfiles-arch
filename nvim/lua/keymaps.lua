-- KEYMAPPINGS: NVIM
vim.keymap.set('n', '<Leader>n', ':noh<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>:normal! zz<CR>')
vim.keymap.set('n', '<Leader>rn', ':set relativenumber!<CR>')

vim.keymap.set('n', '<Leader>e', ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<Leader>s', ':w<CR>')


-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
--vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)



