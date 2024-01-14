-- This file setups multiple plugins used for setting up LSP's

return {
  -- 1. Plugin to download lsp servers, formatters, linters
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({}, {
        ensure_installed = {},
      })
    end,
  },
  -- 2. Install packages via mason from below settings
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "debugpy", "black" },
      })
    end,
  },
  -- 3. Nvim-lspconfig :: neovim to communicate with our lsp servers
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Configuration for each of our language server
      -- lua
      lspconfig.lua_ls.setup({
        -- on_attach = M.on_attach,
        -- capabilities = M.capabilities,

        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                [vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types"] = true,
                [vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy"] = true,
              },
              maxPreload = 100000,
              preloadFileSize = 10000,
            },
          },
        },
      })
      -- python using pyright
      lspconfig.pyright.setup({})
      vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<A-Enter>", vim.lsp.buf.code_action, {})
    end,
  },
}
