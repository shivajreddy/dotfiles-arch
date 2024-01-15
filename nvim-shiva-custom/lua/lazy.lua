-- lua/lazy.lua

-- 1. Install Lazy.nvim if not installed
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

-- 2. Setup lazy's - plugins and their individual config
-- NVIM looks for folder called `~/.config/nvim/lua/plugins`
-- all .lua files inside the plugins directory are expected to return a table {}
-- and all their setup-config can be definied with the `config` variable inside that table
-- then lazy will install/initialize and then does setup. Also lazy loads them on change.
require("lazy").setup({
	{ import = "plugins" },
	{ import = "plugins.lsp" },
	-- { import = "plugins.auto-complete" },
}, {})

-- 3. Set up lazy plugin with lazyplugins and lazy options
--local opts = {}
--require("lazy").setup(plugins, opts)
