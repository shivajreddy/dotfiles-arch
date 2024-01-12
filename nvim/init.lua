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

-- Install Lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



-- giving plugins their own directory
-- NVIM looks for folder called `~/.config/nvim/lua/`
-- main plugins file is `plugins.lua`
-- This also treats all .lua files to return a table {} and all such setup-config
-- will be included in the lazy-setup. Also lazy loads them on change
require("lazy").setup("plugins")

---- LAZY.nvim

-- 2. Lazy Options - setup
local opts = {}
-- 3. Set up lazy plugin with lazyplugins and lazy options
require("lazy").setup(plugins, opts)


-- configure tree-sitter plugin
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = ({"html", "javascript", "typescript", "vim", "lua", "python"}),
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})




