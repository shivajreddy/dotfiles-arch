local plugins = {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "rust-analyzer",
        },
      },
      {
      "neovim/nvim-lspconfig",
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.lspconfig"
      end,
      },
}
return plugins

