-- KEYMAPPINGS: NVIM
vim.keymap.set("n", "<Leader>n", ":noh<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>:normal! zz<CR>")
vim.keymap.set("n", "<Leader>z", "zz<CR>")
vim.keymap.set("n", "<Leader>rn", ":set relativenumber!<CR>")

-- vim.keymap.set("n", "<Leader>e", ":Neotree filesystem reveal left<CR>")
-- vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
vim.keymap.set("n", "<Leader>e", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<Leader>s", ":w<CR>")

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
--vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.keymap.set("n", "<Leader><S-h>", ":split<CR>")
vim.keymap.set("n", "<Leader><S-v>", ":vsplit<CR>")
--vim.keymap.set('n', '<C-->', ':split<CR>')

-- Navigate between tabs with Leader+j, Leader+k, Leader+h, Leader+l
vim.keymap.set("n", "<C-j>", ":tabnext<CR>", {})
vim.keymap.set("n", "<C-k>", ":tabprev<CR>", {})
--vim.keymap.set('n', '<C-h>', ':tabmove -<CR>', {})
--vim.keymap.set('n', '<C-l>', ':tabmove +<CR>', {})

-- Close vim
vim.keymap.set("n", "<Leader>x", ":wq!<CR>")
--vim.keymap.set('n', '<Leader>q', ':q!<CR>')

vim.keymap.set("n", "<Leader>gf", vim.lsp.buf.format, {})

vim.keymap.set("i", "jj", "<Esc>")

-- Comment, in both visual and insert mode
vim.keymap.set("n", "<Leader>/", function()
	require("Comment.api").toggle.linewise.current()
end)
vim.keymap.set("v", "<Leader>/", function()
	require("Comment.api").toggle.linewise.current()
end)

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window left" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window left" })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window left" })

vim.keymap.set("n", "<F9>", ":DapToggleBreakpoint<CR>")
-- vim.keymap.set("n", "<S-F10>", function() require('dap-python').test_method() end)
--
