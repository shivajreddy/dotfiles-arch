-- null-ls is deprecated, so none-ls is the new alternative

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				-- null_ls.builtins.diagnostics.mypy,
				-- null_ls.builtins.diagnostics.ruff,
			},
		})
	end,
}
