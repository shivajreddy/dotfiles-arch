---- LAZY.nvim
-- 1. Lazy - Plugins - load
-- local plugins = 
return {
  -- treesitter for syntax
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  -- neotree for file explorer
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
}

