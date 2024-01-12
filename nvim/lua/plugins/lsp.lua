-- This file setups multiple plugins used for setting up LSP's

return {
  -- 1. This is the plugin used to download lsp servers
  -- https://github.com/williamboman/mason.nvim?tab=readme-ov-file#installation
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- 2. this plugin allows to install lsp server via mason from below settings
  -- this eliminates for us to manuall open :Mason and then install the lsp servers
  -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#installation
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
      ensure_installed={"lua_ls", "pyright"}
      })
    end
  },
  -- 3. Nvim-lspconfig : this allows our neovim to communicate with the lsp servers 
  -- that are installed and running on our system
  {
  }
}
