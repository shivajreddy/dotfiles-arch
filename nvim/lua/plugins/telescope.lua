  -- telescope for finding files
  return { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()

      local telescope_builtin = require('telescope.builtin')

      -- KEYMAPPINGS: Telescope 
      vim.keymap.set('n', '<Leader>ff', telescope_builtin.find_files, {})
      vim.keymap.set('n', '<Leader>fg', telescope_builtin.live_grep, {})
      vim.keymap.set('n', '<Leader>fb', telescope_builtin.buffers, {})
      vim.keymap.set('n', '<Leader>fh', telescope_builtin.help_tags, {})
    end

  }
