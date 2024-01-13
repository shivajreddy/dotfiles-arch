-- This file setups multiple plugins used for setting up LSP's

return {
	-- 1. Plugin to download lsp servers, formatters, linters
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({},{
        ensure_installed = {}
      })
		end,
	},
	-- 2. Install packages via mason from below settings
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	-- 3. Nvim-lspconfig :: neovim to communicate with our lsp servers
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- Configuration for each of our language server
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<A-Enter>", vim.lsp.buf.code_action, {})
		end,
	},
}
